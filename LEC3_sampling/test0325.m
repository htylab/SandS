n=1:41;
x=(1.02).^n+cos(2*pi*n/8);
plot(x,'b+-');hold;

for ii=1:41-3
  
   y(ii)=sum(x(ii:ii+2))/3;
   plot(y,'ro');
   pause;
end
