x=[ 0 0 0 2 4 6 4 2 0 0 0];
stem(x); hold;

y(1)=1/3*(x(1)+x(2)+x(3))
y(2)=1/3*(x(2)+x(3)+x(4))
for n=1:length(x)-2
    y(n)=1/3*(x(n)+x(n+1)+x(n+2))
    stem(y,'ro')
    pause;
end
    