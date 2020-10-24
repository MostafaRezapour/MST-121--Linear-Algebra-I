% This function calculates the inverse of an n by n matrix A, performing the
% EROs on the augmented matrix [A I] to find [I inv(A)]. 
function in=inverse(A)
[m n]=size(A);
inv=[];
Augmented=[A eye(n)];
R=rref(Augmented);
for j=n+1:(2*n)
    inv=[inv R(:,j)];
end

in=inv


end