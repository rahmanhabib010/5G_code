import matplotlib.pyplot as pt
import pandas as pd

def addToSliceDict(sliceDict, info, time):
    sliceKey = info[0]
    if(sliceKey in sliceDict):
        arr = sliceDict[sliceKey]
        while(len(arr) <= time):
            arr.append(0)
        arr[time] = float(info[1])
        sliceDict[sliceKey] = arr
        
    else:
        arr = [0 for i in range(time + 1)]
        arr[time] = float(info[1])
        sliceDict[sliceKey] = arr
    return sliceDict

def processDlprb(filename):
    out = []
    sliceDict = {}
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
            
            if(words[0] == 'Slice'):
                continue
            addToSliceDict(sliceDict, words, time)
            # print(time, words)
    for x in sliceDict:
        # for Size equavalence, add 0 for time
        addToSliceDict(sliceDict, [x, 0], time)
        print(len(sliceDict[x]))
    return sliceDict

def getDf(sliceDict):
    headers = ['Time']
    data = {}
    dataLen = 0
    for slices in sliceDict:
        data[slices] = sliceDict[slices]
        dataLen = len(sliceDict[slices])
    data['Time'] = [i for i in range(dataLen)]
    df = pd.DataFrame(data)
    return df
    
def processSliceFile(dlprbFile):
    sliceDict = processDlprb(dlprbFile)
    df = getDf(sliceDict)
    print(df)
    df.to_csv("4mbps_slice2.csv" ,index = False)
    # print(len(dlprb), len(slotCount))


if __name__ == "__main__":
    inputFileName = "4mbps_slice2.txt"
    print("Hello World")
    processSliceFile(inputFileName)
    