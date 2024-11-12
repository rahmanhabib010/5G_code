import matplotlib.pyplot as plt
import pandas as pd


if __name__ == "__main__":
    
    inputFile = "4mbps_slice1.csv"
    df = pd.read_csv(inputFile)
    for x in df:
        print(x)

    plt.figure(figsize = (15,9))
    legends = []
    for x in df:
        if x != 'Time':
            plt.plot(df['Time'].tolist(), df[x].tolist())
            legends.append(x)
    plt.legend(legends)
    plt.grid(True)
    plt.savefig("slice1.png")
    plt.show()

    