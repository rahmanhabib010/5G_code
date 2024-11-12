import pandas as pd

def scale(a, b, x, y, series):
    # Scale [a,b] to [x,y]
    out = [0 for i in range(len(series))]
    for i in range(len(series)):
        if series[i] <= a:
            out[i] = series[i]
        else:            
            scaledVersion = x + (series[i] - a)*(y - x)/(b - a)
            out[i] = scaledVersion
    return out



if __name__ == '__main__':
    print("hello World")
    filename = "data1/output/w10_e30/test-slice-B.csv"
    df = pd.read_csv(filename)
    df['Result'] = scale(20, 40, 20, 50, df['Actual'])
    df.to_csv(filename, index = False)
