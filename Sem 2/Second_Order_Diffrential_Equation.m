% Finding the Solution for Second order diffrential equation using Matrix 

clc
clear all

A = input('Enter the Square matrix: ');

[m n] = size(A);
[P D] = eig(A)

for i=1:n
    
    a = D(i,i)
    if a>0
        
        eqn = strcat('D2y = -',num2str(abs(a)))
        
    else
        
        eqn = strcat('D2y = ',num2str(abs(a)))
        
    end
    
    eqn = strcat(eqn,'*y')
    
    y_h(i) = dsolve(eqn)
end

solvectorY = [ y_h(1); y_h(2)]
finalsolutionvectorX = P*solvectorY