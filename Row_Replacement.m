function A=Row_Replacement(A,k,i,j)
[nr nc]=size(A);
A(j,:)=k*A(i,:)+A(j,:);
end
