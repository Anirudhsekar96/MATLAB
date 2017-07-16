clc
clear all
y= linspace(-10,10,1001)
plot(y,cos(y),'b:.',y,cos(2*y),'g:.')
xlabel('xaxis')
ylabel('yaxis')