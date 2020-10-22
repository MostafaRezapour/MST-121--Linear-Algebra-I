function detectinv(A)
Pivot_columns_matrix=[];
ind=[];
[m n]=size(A);
% If A is a square matrix (m=n) and its rank is equal to the noumber of
% rows or columns then the columns of A are linearly indepent
if m==n
    if rank(A)==m
        f=msgbox('The columns of A are linearly independent', 'Help','help')
    elseif rank(A)~=m 
          R=rref(A);
     [m n]=size(A);
     for i=1:m
         if sum(abs(A(i,:)))~=0
             r=A(i,:);
             v=find(r);
             Pivot_columns_matrix=[Pivot_columns_matrix A(:,v(1))];
             ind=[ind v(1)];
         end
     end
     p=Pivot_columns_matrix;
     disp('The columns of the following matrix are the pivot columns of the origonal matrix:')
     disp(Pivot_columns_matrix)
      disp(' The pivot columns indices are:')
     disp(ind)
        return
    end
end

 if m~=n
     R=rref(A);
     [m n]=size(A);
     for i=1:m
         if sum(abs(A(i,:)))~=0
             r=A(i,:);
             v=find(r);
             Pivot_columns_matrix=[Pivot_columns_matrix A(:,v(1))];
             ind=[ind v(1)];
         end
     end
     p=Pivot_columns_matrix;
     disp('The columns of the following matrix are the pivot columns of the origonal matrix:')
     disp(Pivot_columns_matrix)
     disp(' The pivot columns indices are:')
     disp(ind)
    

 end
             



%
end