clc
clear all
syms s Y t

y2 = diff(sym('y(t)'),2);
y1 = diff(sym('y(t)'),1);
y0 = sym('y(t)');

a = input('The coefficient of D2y = ')
b = input('The coefficient of Dy  = ')
c = input('The coefficient of y   = ')

nh = input('Enter the non-homogenous part: ')

eqn = a*y2 + b*y1 + c*y0 - nh
LTY= laplace(eqn,t,s);

if(a==0)
    d = input('Enter the vlues of the fuction at 0: ')
    LTY = subs(LTY,{'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,d,e})
end

eqn = collect(LTY,Y)
Y = simplify(solve(eqn,Y));
y = simplify(ilaplace(Y,s,t));
ezplot(y)

