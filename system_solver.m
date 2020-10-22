
%Author Mostafa Rezapour
function system_solver(A,b)
[m n]=size(A);
w=size(b);

x=[];


% check to see whether the coefficient matrix and the right hand side vector
% dimensions match for defining the augmented matrix
if m~=n
   f=msgbox('The system is inconsistent', 'Error','error')
end

% if the coefficient matrix A is a square matrix with rank(A)=m=n, then A
% is invertible and the system Ax=b has the unque solution x=inv(A)*b
if m==n
    if rank(A)==m
        x=inv(A)*b
        return
    end
    
 % define the augmented matrix   
Augmented_Matrix=[A b];
Row_Reduced_Echelon=rref(Augmented_Matrix);

% If there exists a row in form [0 0 0 ... 0 b_m], where b_m~=0, in the row
% reduced echelon form of augmented matrix, then the system is inconsisten

for i=1:m
    if Row_Reduced_Echelon(i,end)~=0
        if sum(abs(A(i,1:n-1)))==0
            f=msgbox('The system is inconsistent', 'Error','error')
            return
        end
    end
end

% Homework 8: Please complete this code for other cases when the system is
% consisten and has infinitely many solution. 
% Note: the output of this code should be the solution in terms of the free
% variables. You might use the symbolivc variable x to describe the
% solutions


f=msgbox('The system has infinitely many solutions', 'Help','help')



   

end
