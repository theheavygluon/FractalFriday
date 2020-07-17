
%% triangle co-ordinates
m=[0 1 2];
n=[0 2 0];


%starting point
ax=zeros(1,15001);
ay=zeros(1,15001);
ax(1)=0.8;
ay(1)=0.8;

%% dice
r=randi(6,1,15000); %15000 random integers frpm 1 to 6
for i=1:15000
    if r(1,i)==1
        x=0;
        y=0;
        elseif r(1,i)==2
        x=0;
        y=0;
        elseif r(1,i)==3
        x=1;
        y=2;
    elseif r(1,i)==4
        x=1;
        y=2;
    else
        x=2;
        y=0;
    end
    ax(1,i+1)=(ax(1,i)+x)/2;
    ay(1,i+1)=(ay(1,i)+y)/2;
    plot(ax(1,i),ay(1,i),'r.');
    hold on;
end

line([m(1),m(2)],[n(1),n(2)]);
line([m(2),m(3)],[n(2),n(3)]);
line([m(1),m(3)],[n(1),n(3)]);
