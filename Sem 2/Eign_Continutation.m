% Contionuation of the Eign Values program
clear all
clc

A = input('Enter the Matrix A: ');

Q = @(x1,x2)[x1;x2]' * A * [x1;x2];
   a = -10 ,    b=10;

%a = input('Enter the Range of x1: ');
%b = input('Enter the Range of x2: ');

%a and b are the ranges of x1 and x2

[X,Y] = meshgrid(a:b,a:b)

z= zeros(size(X));

for i=1:length(X)
    for j=1:length(Y)
      
        Z(i,j) = Q(X(i,j),Y(i,j))
    
    end
end

surf(X,Y,Z)