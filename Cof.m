function C=Cof(A,i,j)
A(i,:)=[];
A(:,j)=[];
A_ij=A;
C=((-1)^(i+j))*det(A_ij);


end