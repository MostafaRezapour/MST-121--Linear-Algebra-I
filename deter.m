% This function finds the determinent of a matrix A across the ith row
% using the cofactor expansion


function deter(A,i)
[m n]=size(A);
d=0;

for j=1:n
   d=d+A(i,j)*Cof(A,i,j); 
end
d    



end