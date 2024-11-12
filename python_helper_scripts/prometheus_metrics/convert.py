import pandas as pd

def add_to_dict(data, key, value, val_type):
    '''
    val_type corresponds:
    0 : type
    1 : description
    2 : current_val
    '''
    if key in data:
        data[key][val_type] = value
    else:
        data[key] = [0 for i in range(3)]
        data[key][val_type] = value
    return data

def process_file(filename):
    file_content = ""
    with open(filename, "r") as fp:
        file_content = fp.read()
    lines = [i for i in file_content.split("\n") if i != ""]
    data = {}
    for line in lines:
        words = line.split(" ")
        if words[0] == "#":
            var_name = words[2]
            if words[1] == "HELP":
                desc = ""
                for word in words[3:]:
                    desc += word + " "
                data = add_to_dict(data, var_name, desc, 1)
                # print(var_name , desc)
            else:
                var_type = words[3]
                data = add_to_dict(data, var_name, var_type, 0)
                # print(var_name, var_type)
        else:
           (var_name, cur_val) = (words[0], words[1])
           data = add_to_dict(data, var_name, cur_val, 2)
        #    print(var_name, cur_val)
    return data


def addtoDf(df, data, exported_from):
    for key in data:
        df.loc[len(df)] = [key] + data[key] + [exported_from]
    return df

if __name__ == '__main__':
    print("Hello World")
    df = pd.DataFrame(columns=['Metric-Name', 'Metric-type', 'Metric-desc', 'Metric-cur-val', "5g-component"])
    for comp in ["amf", "pcf", "smf", "upf"]:
        data = process_file("logs/{}.txt".format(comp))
        df = addtoDf(df, data, comp)
    print(df)
    df.to_csv("metrics.csv", index=False)