function plotData2D (data)
  
  figure; hold on;

  %Data is split
  [x y] = splitData(data);
  
  %Index for positive and negative output is got
  pos = find(y==1);
  neg = find(y==0);

  %Plot
  plot(x(pos,1), x(pos,2), 'g*');
  plot(x(neg,1), x(neg,2), 'r*');

endfunction
