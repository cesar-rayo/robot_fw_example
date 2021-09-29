import csv
import json


def read_csv_file(filename):
    data = []
    with open(filename, 'r') as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data


def read_json_file(filename):
    data = {}
    try:
        with open(filename, 'r') as json_file:
            data = json.load(json_file)
    except Exception as e:
        print(e)
    return data
