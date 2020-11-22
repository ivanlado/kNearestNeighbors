clear ; close all; clc;

%Data is loaded
data = load("data.txt");

%Data is split into x features a the label
[x y] = splitData(data);

%Calculate de number of features and data. The last column is the output
nFeatures = size(data, 2) - 1;
nData = size(data, 1);

%Data is plotted
plotData(data)

%Value to be predicted. 
predict = mean(x, 1); %DEFAULT VALUE

%The label for 
basicKNeighbours(data, predict)
