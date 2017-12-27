function main(a,b,c)
  [zMatrix,yVector,xVector] = createZMatrix(a,b,c,400);
  w = weights(zMatrix,yVector);
  okno1=figure( );
  x=linspace(-10,10,10);
  f=w(1)*x.^2 + w(2)*x + w(3);
  plot(x, f);
  hold on;
  for i = 1:length(xVector)
    plot(xVector(i),yVector(i));
  end
  grid on;
  pause(2);
  delete(okno1);
endfunction