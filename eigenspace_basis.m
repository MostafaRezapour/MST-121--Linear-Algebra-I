% This function finds a basis for the eigenspace corresponding to
% eigenvalue lambda
function  B=eigenspace_basis(A,lambda)
[m n]=size(A); % m=n
%eigenvalues=eig(A);
%unique_eigenvalues=unique(eigenvalues);
B=Nullspace(A-lambda*eye(n))




end