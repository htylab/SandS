clear;close all; 
x=[0 0 0 0 2 4 6 4 2 0 0 0 0];
 
 %y[n]=(x[n]+x[n+1]+x[n+2])/3
 
 for n=1:11
 y(n)=(x(n)+x(n+1)+x(n+2))/3;
 stem(x);hold;
 stem(y,'r');hold;
 pause(1);
 end
 
