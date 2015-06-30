F0=13;
T0=1/F0;
Ts=0.07;tt=0:Ts:(13*T0);
xx=real(exp(j*(2*pi*F0*tt-pi/2)));

plot(tt,xx);
xlabel('Time (sec)');grid on;
