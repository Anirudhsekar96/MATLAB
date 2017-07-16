clc
clear all
syms x k1 k2


a = input('The coefficient of D2y= ')
b = input('The coefficient of Dy = ')
c = input('The coefficient of y  = ')

%a1=a/a;    
%b1=b/a;
%c1=c/a;

eqn  =a*x^2 + b*x + c
%eqn1 = subs(eqn,{'[a,b,c]'},{[a1,b1,c1]})

r = solve(eqn,'x');

if(imag(r)~=0)
    y1 = exp(real(r(1))*x)*cos(abs(imag(r(2))*x))
    y2 = exp(real(r(1))*x)*sin(abs(imag(r(2))*x))
    
elseif(r(1)==r(2))
    y1 = exp(r(1)*x)
    y2 = x*exp(r(1)*x)
    
else
    y1 = exp(r(1)*x)
    y2 = exp(r(2)*x)
end

yh = k1*y1 + k2*y2
disp(yh)

y = yh

w = simplify(y1*diff(y2)-y2*diff(y1));

g = input('Enter the non homogenous part: ')
yp = y1*int(y2*g/w) + y2*int(y1*g/w)

y = yh +yp

disp(y)

