% Author: Mostafa Rezapour
%You should check whether there is a bug in this code.You should use
%different tot examples.
%Homework 8, problem 1: This function finds a basis of the Null Space of an m by n
%matrix A.

function N=Nullspace(A)
[m, n]=size(A);
x=sym('x',[3 1]);
R=rref(A);
if m==n
    if rank(A)==m
        f=msgbox('The Null space of the matrix is the zero vector and its basis is the empty set','Solution','help')
      N=[];  
    end
end


    % I use the "detectinv" function that we have already defined and
    % dissicused in the lecture and is located in the same directory to
    % find the pivot columns indices. 
    [Q, v]=detectinv(A);
    index=[1:1:n];
    Non_pivot_indices=setdiff(index,v);
    for i=1:m
        R(i,i)=-1;
    end
    
    Null_space_basis=(-1)*R(:,Non_pivot_indices);
   
    
    disp('The columns of the following matrix is a basis for the null space of the matrix')
    disp(Null_space_basis)

    
N=Null_space_basis;

end