clear;
close all;
n=1:40;
x=(1.02).^n+cos(2*pi*n/8);
x1=(1.02).^n;


 %y[n]=(x[n]+x[n+1]+x[n+2])/3
 for nn=1:34
 y(nn)=(x(nn)+x(nn+1)+x(nn+2)+x(nn+3)+x(nn+4)+x(nn+5)+x(nn+6))/7;
 plot(x,'kd-');hold;
plot(x1,'b:');
plot((nn:nn+6),x((nn:nn+6)),'bd');
plot(y,'r+-');hold;
pause(1);
 end
 
 