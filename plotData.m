function plotData(data)
  
  %Training data amount is calculated
  nCols = size(data, 2);
  nFeatures = nCols -1;
  
  %Data will be only plotted if it is 2 dimensional
  if nFeatures == 2
    plotData2D(data);
  end  

endfunction
