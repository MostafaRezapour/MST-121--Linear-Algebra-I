function eigenspace(A,lambda)
[m n]=size(A); %m=n
B=A-lambda*eye(n);
N=Nullspace(B);
disp('The columns of the following matrix forms a basis of the eigenspace of the matrix corresponding to the givem eigenvalue')
disp(N)
end