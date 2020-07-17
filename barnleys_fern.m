r=rand(1,10000);
x(1,10000)=zeros;
y(1,10000)=zeros;
x(1,1)=0;
y(1,1)=0;
for i=1:9999
    if r(i)<0.01
        x(i+1)=0;
        y(i+1)=0.16*y(i);
    elseif r(i)<0.85
        x(i+1)=0.85*x(i)+0.04*y(i);
        y(i+1)=-0.04*x(i)+0.85*y(i)+1.6;
    elseif r(i)<0.93
        x(i+1)=0.2*x(i)-0.26*y(i);
        y(i+1)=0.23*x(i)+0.22*y(i)+1.6;
    else x(i+1)=-0.15*x(i)+0.28*y(i);
        y(i+1)=0.26*x(i)+0.24*y(i)+0.44;
    end
    plot(x(i),y(i),'g.');
    hold on;
end