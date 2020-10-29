% This function takes an m by n matrix as the input and returns a basis B
% for the Null space of A.

function N=Nullspaceofmatrix(A)
[m n]=size(A); % m is # rows and n # coluimns of A
R=rref(A);
x=sym('x',[n 1]);
[B v]=detectinv(A);
w=[1:n];
Non_pivot_indices=setdiff(w,v);
N=[];
for i=1:length(Non_pivot_indices)
dumy=zeros(n,1);
r=R(:,Non_pivot_indices(i));
dumy(v)=-r(v);
dumy(Non_pivot_indices(i),1)=1;
N=[N dumy];
end
N
end