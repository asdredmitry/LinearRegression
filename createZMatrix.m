function [zMatrix,yVector,xVector] = createZMatrix(a,b,c,len)
  zMatrix = eye(len,3);
  yVector = [len];
  xVector = [len];
  for i = 1:len
    x = rand*10 - rand*10;
    zMatrix(i,1) = x^2;
    zMatrix(i,2) = x;
    zMatrix(i,3) = 1;
    yVector(i) = a*x^2 + b*x + c + rand*0.1 - rand*0.1;
    xVector(i) = x;
  end;
endfunction