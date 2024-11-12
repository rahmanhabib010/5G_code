import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

import tensorflow as tf
from numpy import array
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.layers import Flatten, Dropout, Activation
from tensorflow.keras.layers import LSTM
import numpy as np
import pandas as pd
import os
import simplejson as json


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

def preprocess(infilename, masterFolder):
    df = pd.read_csv(infilename)
    slice = df['sd'].drop_duplicates().tolist()
    print(slice)
    index = 0
    for curSlice in slice:
        curDf = df[df['sd'] == curSlice]
        data = curDf["dlprbUsage"].tolist()
        #  trim left to right data if data is less than 5
        data = trim_list(data, 5)
        # data = moving_average(data, 10)

        outdf = pd.DataFrame({"dlprbUsage" : data})
        outdf.to_csv("{}processed-slice-{}.csv".format(masterFolder, chr(ord("A") + index)), index = False)
        index += 1

def split_series(series, n_past, n_future):
    X, y = list(), list()
    for window_start in range(len(series)):
        past_end = window_start + n_past
        future_end = past_end + n_future
        if future_end > len(series):
            break
        # slicing the past and future parts of the window
        past, future = series[window_start:past_end], series[past_end:future_end]
        X.append(past)
        y.append(future)
    return np.array(X), np.array(y)

def getModel(windowSize):
    model = Sequential()
    model.add(LSTM(units = 150, activation="tanh" ,return_sequences = True, input_shape = (windowSize, 1)))
    model.add(LSTM(units = 150, return_sequences = True,activation="tanh"))
    model.add(LSTM(units = 150,return_sequences = False,activation="tanh" ))
    model.add((Dense(units = 1)))
    model.compile(loss='mse', optimizer='adam',metrics=['mse'])
    model.summary()
    return model

def mkdirs(path):
    if not os.path.exists(path):
        os.makedirs(path)

def trainAndPrdict(inputFile, masterFolder, title,windowSize, epochs):
    print("Training Model for File: ", infile)
    curFolder = "{}output/w{}_e{}/".format(masterFolder, windowSize, epochs)
    mkdirs(curFolder)

     
    df = pd.read_csv(inputFile)
    series = df['dlprbUsage'].tolist()
    series = moving_average(series, 5)

    splitLength = int(80/100*len(series))
    xTrain, yTrain = split_series(series[:splitLength],windowSize, 1)
    xTest, yTest = split_series(series[splitLength: ], windowSize, 1)

    xTrain = xTrain.reshape((xTrain.shape[0], xTrain.shape[1], 1))
    xTest = xTest.reshape((xTest.shape[0], xTest.shape[1], 1))
    model = getModel(windowSize)

    model.fit(xTrain, yTrain, batch_size=10,epochs=int(epochs), validation_split=0.2)
    yhatTrain = model.predict(xTrain, verbose = 0)
    yhatTest = model.predict(xTest, verbose = 0)

    data = {
        'Train-Accuracy': str(np.mean(np.absolute(np.asarray(yhatTrain)-np.asarray(yTrain))<5)),
        'Test-Accuracy': str(np.mean(np.absolute(np.asarray(yhatTest)-np.asarray(yTest))<5)),
        'epoch' : epochs,
        'windowSize': windowSize
        }
    with open("{}summary-slice-{}.json".format(curFolder , title), 'w') as fp:
        json.dump(data, fp, indent=4)

    # Save Train-Test Actual & Predicted in a file
    yTrain = yTrain.reshape(yTrain.shape[0])
    yhatTrain = yhatTrain.reshape(yhatTrain.shape[0])

    yTest = yTest.reshape(yTest.shape[0])
    yhatTest = yhatTest.reshape(yhatTest.shape[0])
    print(yTrain.shape, yhatTrain.shape)
    df = pd.DataFrame({"Actual": yTrain, "Predicted" : yhatTrain})    
    df.to_csv("{}train-slice-{}.csv".format(curFolder, title, ), index = False)

    df = pd.DataFrame({"Actual": yTest, "Predicted" : yhatTest})    
    df.to_csv("{}test-slice-{}.csv".format(curFolder, title), index = False)


if __name__ == '__main__':
    print("Hello World")
    masterFolder = 'data1/'
    # preprocess(masterFolder + "dlprb_slice.csv", masterFolder)
    for i in range(2):
        infile = masterFolder + "processed-slice-{}.csv".format(chr(ord("A") + i))
        trainAndPrdict(infile, masterFolder, chr(ord("A") + i),10, 30)