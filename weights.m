function w = weights(zMatrix,y)
  zMatrixT = zMatrix'
  zInv = zMatrixT*zMatrix;
  zInv = inv(zInv);
  zMatrix = zInv*zMatrixT;
  w = zMatrix*(y');
 endfunction 