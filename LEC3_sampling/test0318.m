t=0:1/1e5:0.01;
n=0:1/1600:0.01;
f=800;
plot(t,cos(2*pi*f*t), n,cos(2*pi*f*n),'ro:')