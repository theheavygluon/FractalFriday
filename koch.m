function def_abc=Koch(x,y,xe,ye,len)

lenth=sqrt((x-xe)*(x-xe)+(y-ye)*(y-ye));
theta=pi/3;
x1=x+len/3;
y1=y;

x2=x1+(len*cos(theta))/3;
y2=y1+(len*sin(theta))/3;

x3=x2+(len*cos(theta))/3;
y3=y2-(len*sin(theta))/3;

x4=x3+len/3;
y4=y3;

if lenth > 0.005
    
    line([x,x1],[y,y1]);
    line([x1,x2],[y1,y2]);
    line([x2,x3],[y2,y3]);
    line([x3,x4],[y3,y4]);
    
    Koch(x,y,x1,y2,len/3);
    Koch(x1,y1,x2,y2,len/3);
    Koch(x2,y2,x3,y3,len/3);
    Koch(x3,y3,x4,y4,len/3);
    
    axis([-0.1 1 -0.01 0.5]);
    whitebg([1 1 1]);
    pause(0.001);
    
end
end