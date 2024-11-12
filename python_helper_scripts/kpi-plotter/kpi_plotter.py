import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

def plotData(series, title):
    series = series[:1000]
    savefolder = "images/"
    plt.figure(figsize = (15, 9))
    plt.grid(True)
    plt.plot([2*i for i in range(len(series))], series)
    plt.xlabel("Time(sec)")
    plt.ylabel("Slice-DLPRB %")
    plt.title(title)
    plt.savefig("{}{}.png".format(savefolder, title))

def trim_list(lst, limit):
    # Initialize pointers
    left = 0
    right = len(lst) - 1
    
    # Move the left pointer to the first element greater than 5
    while left <= right and lst[left] <= limit:
        left += 1
    
    # Move the right pointer to the last element greater than 5
    while left <= right and lst[right] <= limit:
        right -= 1
    
    # Return the trimmed list using slicing
    return lst[left:right+1]

def moving_average(lst, window_size=10):
    # Convert the list to a NumPy array
    arr = np.array(lst)
    
    # Compute the moving average using np.convolve
    return np.convolve(arr, np.ones(window_size)/window_size, mode='valid')


def preprocess(series):
    data = series["dlprbUsage"].tolist()
    #  trim left to right data if data is less than 5
    data = trim_list(data, 5)
    # data = moving_average(data, 10)
    
    return data

if __name__ == "__main__":
    print("Hello World")
    datafile = "input/dlprb_slice.csv"
    df = pd.read_csv(datafile)
    uniqueSd = df['sd'].drop_duplicates().tolist()
    print(uniqueSd)
    index = 0
    for sd in uniqueSd:
        data = preprocess(df[df['sd'] == sd])
        plotData(data, "Slice-{}-1000dp-raw".format(chr(ord("A") + index)))

        index += 1
    print(df)