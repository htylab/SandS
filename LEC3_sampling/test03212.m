n=0:40
x=1.02.^n+cos(2*pi*n/8+pi/4);
plot(x,'b*-');hold
for ii=1:(40-7)
y(ii)=sum(x(ii:ii+2))/3;
plot(y,'ro')
pause
end