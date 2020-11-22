function [x, y] = splitData(data)
  %Training data amount is calculated
  nCols = size(data, 2);
  nFeatures = nCols -1;

  %Data is split
  x = data(:, 1:nFeatures);
  y = data(:, nCols);
endfunction
