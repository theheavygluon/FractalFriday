[x,y]=meshgrid(-1:0.001:1,-1:0.001:1); %% background

 z=exp(x+i*y); %% cosine function initialization
z1=exp(z);
z2=exp(z1);
z3=exp(z2);
z4=exp(z3);
z5=exp(z4);
z6=exp(z5);
z7=exp(z6);
z8=abs(exp(z7));

surf(x,y,z8,'EdgeColor','none');

zlim([0,60]);
caxis([0,60]);
view(2)
