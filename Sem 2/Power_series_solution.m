% Finding the Power Series solution for Second order diffrential equation 

clc
clear all
syms x p q c r f z

P = input('Enter the coefficient of D2y: ');
q = input('Enter the coefficient of Dy: ');
r = input('Enter the coefficient of y: ');
n = input('Enter the number of Elements: ');

i1 = input('Enter the value of Y(0) : ');
i2 = input('Enter the value of DY(0) : ');

for i=1:n+1
    
    c(i) = strcat('c',num2str(i-1))
end

y = sum(c.*(x).^(0:n))
eq = p*diff(diff(y,x),x) + q*diff(y,x) + r*y

a = collect(eq,x)
b = coeffs(a,x)

i_1 = strcat('c0 = ',num2str(i1))
i_2 = strcat('c1 =',num2str(i2))

d = solve(i_1,i_2,b(1,1:n-1))
fn = fieldname(d)

for i=1:n+1
    y=vpa(subs(y,c(i),d.(fn{i})),4)
    pause
end
ezplot(y,[-4,4])
