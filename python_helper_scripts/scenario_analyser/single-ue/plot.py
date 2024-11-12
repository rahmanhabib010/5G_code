import matplotlib.pyplot as plt
import pandas as pd


if __name__ == "__main__":
    inputFile = "google-pixel-x-bw.csv"
    df = pd.read_csv(inputFile)
    plt.figure(figsize = (15,9))
    plt.plot(df['Time'].tolist(), df['DLPRB'].tolist())
    plt.grid(True)
    plt.savefig("googlePixel-dlprb.png")
    plt.show()

    plt.figure(figsize = (15,9))
    plt.plot(df['Time'].tolist(), df['NumSlots'].tolist())
    plt.grid(True)
    plt.savefig("googlePixel-slots.png")
    plt.show()

    plt.figure(figsize = (15,9))
    plt.plot(df['Time'].tolist(), df['SumPrbs'].tolist())
    plt.grid(True)
    plt.savefig("googlePixel-sumPrbs.png")
    plt.show()