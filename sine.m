%% background
[x,y]=meshgrid(0.65:0.0001:0.75,1.8:0.0001:2);

%% sine function initialization
z=sin(x+i*y);
z1=sin(z);
z2=sin(z1);
z3=sin(z2);
z4=sin(z3);
z5=sin(z4);
z6=sin(z5);
z7=sin(z6);
z8=sin(z7);
z9=sin(z8);
z10=sin(z9);


z11=abs(sin(z10));


surf(x,y,z11,'EdgeColor','none');

zlim([0,1]);
caxis([0,1]);
view(2)