import matplotlib.pyplot as plt
import pandas as pd

def processNumSlots(filename):
    out = []
    with open(filename, 'r') as fp:
        time = 0
        for lines in fp.read().split("\n"):
            try:
                if(lines[0][0] == '-'):
                    time += 1
                    continue
            except:
                break
            words = [x for x in lines.split("\t") if x != '']
            if(words[0] == 'RNTI'):
                slotsList = [x for x in words[3].split(' ') if x != '' ]
                numSlot = slotsList[-1]
                out.append(int(numSlot))
                print(time, numSlot)
    return out

def processDlprb(filename):
    out = []
    with open(filename, 'r') as fp:
        time = 0
        for lines in fp.read().split("\n"):
            try:
                if(lines[0][0] == '-'):
                    time += 1
                    continue
            except:
                break
            words = [x for x in lines.split("\t") if x != '']
            if(words[0] == 'RNTI' or words[0] == 'Total'):
                continue
            out.append(words) # words are RNTI, DLPRB, SumPRbs
    return out

def getDf(dlprb, slotCount):
    df = pd.DataFrame(columns=['Time', 'RNTI','DLPRB', 'SumPrbs', 'NumSlots'])
    slotCountSync = 0
    while(True):
        if(slotCount[slotCountSync] != 0):
            break
        slotCountSync += 1

    length = min(len(dlprb), len(slotCount))
    for i in range(length):
        df.loc[len(df)] = [i + 1, dlprb[i][0], float(dlprb[i][1]), int(dlprb[i][2]), slotCount[slotCountSync + i]]
    return df

def processSingleUeFile(dlprbFile, numSlotsFile):
    dlprb = processDlprb(dlprbFile)
    slotCount = processNumSlots(numSlotsFile)
    df = getDf(dlprb, slotCount)
    print(df)
    df.to_csv("google-pixel-x-bw.csv" ,index = False)
    print(len(dlprb), len(slotCount))


if __name__ == "__main__":
    inputFileName = "google-pixel-x-bw.txt"
    print("Hello World")
    processSingleUeFile("google-pixel-x-bw.txt", "google-pixel-x-numslots.txt")
    