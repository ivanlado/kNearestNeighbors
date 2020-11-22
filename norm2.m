function normValue = norm2(pointMatrix)
  normValue = 0;
  normValue = sqrt(sum(pointMatrix.^2, 2));
endfunction
