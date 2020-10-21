function A=Row_Interchange(A,i,j)
[nr nc]=size(A);
dummy=zeros(1, nc);
dummy=A(i,:);
A(i,:)=A(j,:);
A(j,:)=dummy;
end
