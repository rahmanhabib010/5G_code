import pandas as pd
import numpy as np
from plot import plotSingle

def moving_average(lst, window_size=10):
    # Convert the list to a NumPy array
    arr = np.array(lst)
    
    # Compute the moving average using np.convolve
    return np.convolve(arr, np.ones(window_size)/window_size, mode='valid')

if __name__ == '__main__':
    print("Hello World")
    infile = "real-data/under_utilized_habib.csv"
    df = pd.read_csv(infile)
    series = moving_average(df["dlprbUsage"].tolist(), 5)
    plotSingle(series, "under-Utilised-Processed")
    outDf = pd.DataFrame({"dlprbUsage" : series})
    outDf.to_csv("real-data/under_utilized_processed.csv", index = False)








