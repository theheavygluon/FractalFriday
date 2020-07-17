function def_xyz=tree(xold,yold,theta,length)

% xold,yold = value of x and y co-ordinate for every iteration
% theta= angle of rotation for every new branch
%length= length of branch for every new iteration


% ratio=0.65; % multiplication factor for length of new branch that'll reduce the length
ratio=randi([20,90])/100;
%new co-ordinates
xnew=xold+length*cos(theta);
ynew=yold+length*sin(theta);

if length > 0.005
    
    line([xold,xnew],[yold,ynew],'linewidth',2,'Color',[randi([0,1]) randi([0,1]) 0]);
    
    % brach on right side of every iteration
    tree(xnew,ynew,theta+pi/5,length*ratio);
    
    % brach on left side of every iteration
    tree(xnew,ynew,theta-pi/5,length*ratio);
    axis([-3 3 0 2.5]);
    whitebg([1 1 1]);
    pause(0.0001);

end
end
