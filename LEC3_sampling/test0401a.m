n=1:41;
x=(1.02).^n+cos(2*pi*n/8);
x1=(1.02).^n;
plot(n,x,'kd-');hold;
plot(n,x1,'r-');hold;


for nn=1:35
    y(nn)=(x(nn)+x(nn+1)+x(nn+2))/3;
    y(nn)=(x(nn)+x(nn+1)+x(nn+2)+x(nn+3)+x(nn+4)+x(nn+5)+x(nn+6))/7;  
plot(n,x,'kd-');hold;
plot(nn:(nn+6),x(nn:(nn+6)),'rd');
plot(n,x1,'r-');
plot(1:nn,y(1:nn),'b+:');hold;
pause;
end
   


