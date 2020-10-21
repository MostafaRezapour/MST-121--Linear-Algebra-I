function A=Scalar_Multiplication(A,k,i)
[nr nc]=size(A);
A(i,:)=k*A(i,:);
end
