function predictedLabel = basicKNeighbours(data, predict, k=ceil(sqrt(size(data, 1))))
  predictedLabel = 0;
  
  %Training data amount is calculated
  nData = size(data, 1);
  nCols = size(data, 2);
  
  %Training data and labels are split
  x = data(:, 1:(nCols-1));
  y = data(:, nCols);
  
  %A distance colum is left-added to data
  data = [norm2(x-predict) data];
  nCols = nCols + 1;

  %Data rows are sorted taking into account 
  data = sortrows(data);
  
  %Labels are updated, since order has just changed
  y = data(:, nCols);
  
  %The value of the predicted value is calculated
  if mean(y(1:k,:),1) >0.5
    predictedLabel = 1;
  else  
    predictedLabel = 0;
  end  
  
endfunction