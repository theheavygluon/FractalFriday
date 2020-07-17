%% background
[x,y]=meshgrid(-2:0.001:2,-2:0.001:2);

%% cose function initialization
z=cos(x+i*y);
z1=cos(z);
z2=cos(z1);
z3=cos(z2);
z4=cos(z3);
z5=cos(z4);
z6=cos(z5);
z7=cos(z6);
z8=cos(z7);
z9=cos(z8);
z10=cos(z9);


z11=abs(cos(z10));


surf(x,y,z11,'EdgeColor','none');

zlim([0,1]);
caxis([0,1]);
view(2)