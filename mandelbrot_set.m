
%% power of Z
n=2;

%% square with side length 2 units and step size 0.01
[x,y]=meshgrid(-1:0.001:1,-1:0.001:1);

%% recurring function Z
z=abs((((((((((((((((((((((((((((((((x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y).^n+x+1*i*y);

%% countour plot of absolute value of Z with (x,y) meshgrids
surf(x,y,z,'EdgeColor','none');

%% upper limit of Z can be changed for appropriate plot
zlim([0,1.5]);

caxis([0,1.5]);
view(2)