%This function recognizes whether an n by n matrix A is diagonalizable or
%not. If the matrix A is diagozalizable the output of the function will be
%output=1, otherwise output=0.
function output=detectdiag(A)
[m n]=size(A); %m=n
lambda=sym('lambda');
characteristic_polynomial=det(A-lambda*eye(n));
eigenvalues=solve(characteristic_polynomial,lambda);
eigenvalues=double(eigenvalues);
multiplicity=histc(eigenvalues,unique(eigenvalues));
[P D]=eig(A);
if rank(P)==m
    f=msgbox('The eigvectors of A are linearly independent and A is diagonalizable','Solution','help')
end

if rank(P)~=m
        f=msgbox(' A is not diagonalizable','Solution','help')
end



end