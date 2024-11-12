import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


def plotSingle(series, title):
    savefolder = "images/"
    plt.figure(figsize = (15, 9))
    plt.rcParams['xtick.labelsize'] = 22
    plt.rcParams['ytick.labelsize'] = 22
    plt.grid(True)
    plt.plot([i for i in range(len(series))], series, label="Actual")
    # plt.legend(fontsize=18)
    plt.xlabel("Time (min)", fontsize=22)
    plt.ylabel("Slice-DLPRB %", fontsize=22)
    plt.title(title, fontsize=22)
    plt.savefig("{}{}.png".format(savefolder, title))


def plotData(actual, predicted, result = None, title = ""):
    # series = series[:1000]
    savefolder = "images/"
    plt.figure(figsize = (15, 9))
    plt.rcParams['xtick.labelsize'] = 22
    plt.rcParams['ytick.labelsize'] = 22
    plt.grid(True)
    plt.plot([i for i in range(len(actual))], actual, label="Actual", alpha=0.6, lw=3)
    if result is not None:
        plt.plot([i for i in range(len(result))], result, label="After Policy Enforcement", lw=2, alpha=0.7, linestyle='dashed')
    plt.plot([i for i in range(len(predicted))], predicted, 'red', label="Predicted", linestyle='dashed')
    plt.legend(fontsize=18)
    plt.xlabel("Time (min)", fontsize=22)
    plt.ylabel("Slice-DLPRB %", fontsize=22)
    plt.title(title, fontsize=22)
    plt.savefig("{}{}.png".format(savefolder, title))


if __name__ == "__main__":
    print("Hello World")
    datafile = "real-data/output/w10_e100/test-slice-under-utilized.csv"
    # datafile = "real-data/over_utilized_habib.csv"
    
    df = pd.read_csv(datafile)
    plotData(df['Actual'], df['Predicted'], df['Result'], "Slice-B")

    # datafile = "real-data/output/w10_e100/train-slice-under-utilized.csv"
    # # datafile = "real-data/over_utilized_habib.csv"
    
    # df = pd.read_csv(datafile)
    # plotData(df['Actual'], df['Predicted'], None, "Slice-B-Train-data")