% This Matlab function calculates the inverse of an invertible matrix using
% the adjoint formula.

function in=inversecof(A)
Adjoint=[];
[m n]=size(A)
for i=1:m
    for j=1:n
        Adjoint(i,j)=Cof(A,j,i);
    end
end
Adjoint
in=(1/det(A))*Adjoint




end