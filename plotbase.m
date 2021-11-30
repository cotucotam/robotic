t =(1/16:1/8:1)'*3*pi;
x=null(2,1)
y=null(2,1)
z=null(2,1);
for t=1/16*2*pi:1/8*2*pi:3*pi
    x = [x;0.5*cos(t) 0.5*cos(t)];
    y = [y;0.5*sin(t) 0.5*sin(t)];
    z = [z;0 0.05];
end
fill3(x,y,z,'white')
surf(x,y,z, 'FaceColor',[164, 71, 42]/255, 'EdgeColor','none','FaceAlpha',1)