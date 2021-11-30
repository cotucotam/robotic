function plot_robot(handles)
%% DH Table
global plotdata;
axes(handles.axes1);
cla(handles.axes1,'reset')
opacity = str2num(get(handles.DisplayOpacity,'String'));
Scara=SCARA_object(0.372,0.095,0.45,0.4);
Scara.theta1 = str2num(get(handles.DisplayTheta1,'String'))*pi/180;
Scara.theta2 = str2num(get(handles.DisplayTheta2,'String'))*pi/180;
Scara.d3     = str2num(get(handles.DisplayD3,'String'));
Scara.theta4 = str2num(get(handles.DisplayTheta4,'String'))*pi/180;
[ A0_1, A0_2, A0_3, A0_4]=Scara.forward_kinnematic(Scara,Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3);  
p0 = [0;0;0];

[p1, o1] = cal_pose(A0_1,p0);
[p2, o2] = cal_pose(A0_2,p0);
[p3, o3] = cal_pose(A0_3,p0);
[p4, o4] = cal_pose(A0_4,p0);
% 
px1=p1(1);
py1=p1(2);
pz1=p1(3);

px2=p2(1);
py2=p2(2);
pz2=p2(3);

px3=p3(1);
py3=p3(2);
pz3=p3(3);

px4=p4(1);
py4=p4(2);
pz4=p4(3);

th1= Scara.theta1;
th2= Scara.theta2+th1;
th4= th2+Scara.theta4;
%% Plot
hold on
grid on
p0 = [0;0;0.372];
A0_0=[1 0 0 0;
      0 1 0 0;
      0 0 1 p0(3);
      0 0 0 1];
Con =[p0,p1,p2,p3,p4];
% plot_coordinate(p0(1),p0(2),p0(3),1,1,1,0);
%% plot coordinate
if handles.checkboxCo0.Value
    plot_coordinate(p0(1),p0(2),p0(3)+0.1,A0_0);%% 0.1 là ofset cai de
end
if handles.checkboxCo1.Value
    plot_coordinate(px1,py1,pz1+0.306,A0_1);
end
if handles.checkboxCo2.Value
    plot_coordinate(px2,py2,pz2+0.306,A0_2);
end
if handles.checkboxCo3.Value
    plot_coordinate(px3,py3,pz3,A0_3);
end
if handles.checkboxCo4.Value
    plot_coordinate(px4,py4,pz4,A0_4);
end

xlabel('x');
ylabel('y');
zlabel('z');
xlim([-1.2 1.2]);
ylim([-1.2 1.2]);
zlim([0 1.2]);
RobotColor=[172/255 172/255 172/255];
%base
x=null(2,1)
y=null(2,1)
z=null(2,1);
for t=1/16*2*pi:1/8*2*pi:2.5*pi
    x = [x;0.5*cos(t) 0.5*cos(t)];
    y = [y;0.5*sin(t) 0.5*sin(t)];
    z = [z;0 0.05];
end

surf(x,y,z, 'FaceColor',[164, 71, 42]/255, 'EdgeColor','none','FaceAlpha',1)
fill3(x,y,z,[164, 71, 42]/255)
% base_plot=plot3([0 0],[ 0 0 ],[0 0.372],'color','black','LineWidth',10);
% base_plot.Color(4)=1;
% plot3(0,0,-0.5,'rx')

grid on
r1=0.16;
[X1 Y1 Z1]= cylinder(r1);
Z1=Z1*0.372;
surf(X1, Y1 ,Z1,'FaceColor', RobotColor,'EdgeColor','none','FaceAlpha',opacity);
hold on ;
fill3(X1', Y1',Z1', RobotColor,'FaceAlpha',opacity);

%joint 0
r2=0.158;
[X2 Y2 Z2]=cylinder(r2);
Z2=Z2*0.08;
surf(X2, Y2 ,Z2+pz1,'FaceColor', RobotColor,'EdgeColor','none','FaceAlpha',opacity);
fill3(X2', Y2',Z2'+pz1, RobotColor,'FaceAlpha',opacity);
% 
%joint 1
r3= 0.158;
[X3 Y3 Z3]=cylinder(r3);
Z3=Z3*0.08;
surf(X3+px1, Y3+py1 ,Z3+pz1,'FaceColor', RobotColor,'EdgeColor','none','FaceAlpha',opacity);
fill3(X3'+px1, Y3'+py1,Z3'+pz1, RobotColor,'FaceAlpha',opacity);

r4= 0.158;
[X4 Y4 Z4]=cylinder(r4);
Z4=Z4*(0.206+0.0615);
surf(X4+px1, Y4+py1 ,Z4+pz1,'FaceColor', RobotColor,'EdgeColor','none','FaceAlpha',opacity);
fill3(X4'+px1, Y4'+py1,Z4'+pz1, RobotColor,'FaceAlpha',opacity);
% 
%joint 2
r5= 0.124;
[X5 Y5 Z5]=cylinder(r5);
Z5=Z5*(0.206+0.0615);
surf(X5+px2, Y5+py2 ,Z5+pz2,'FaceColor', RobotColor,'EdgeColor','none','FaceAlpha',opacity);
fill3(X5'+px2, Y5'+py2,Z5'+pz2, RobotColor,'FaceAlpha',opacity);
% 
% r7= 0.124;
% [X7 Y7 Z7]=cylinder(r7);
% Z7=Z7*0.08;
% surf(X7+px2, Y7+py2 ,Z7+pz2,'FaceColor', 'y','EdgeColor','none','FaceAlpha',opacity);
% fill3(X7'+px2, Y7'+py2,Z7'+pz2, 'y');
% 
%joint 3
r6= 0.0395;
[X6 Y6 Z6]=cylinder(r6);
Z6=Z6*0.68;
surf(X6+px3, Y6+py3 ,Z6+pz4,'FaceColor', [0 0 0],'EdgeColor','none','FaceAlpha',opacity);
fill3(X6'+px3, Y6'+py3,Z6'+pz4, RobotColor,'FaceAlpha',opacity);


%link 1
Link1_X=[r2*cos(th1+pi/2),-r2*cos(th1+pi/2),px1-r3*cos(th1+pi/2),px1+r3*cos(th1+pi/2);
         r2*cos(th1+pi/2),-r2*cos(th1+pi/2),px1-r3*cos(th1+pi/2),px1+r3*cos(th1+pi/2);
         r2*cos(th1+pi/2),r2*cos(th1+pi/2),px1+r4*cos(th1+pi/2),px1+r4*cos(th1+pi/2);
         -r2*cos(th1+pi/2),-r2*cos(th1+pi/2),px1-r4*cos(th1+pi/2),px1-r4*cos(th1+pi/2)];

Link1_Y=[r2*sin(th1+pi/2),-r2*sin(th1+pi/2),py1-r3*sin(th1+pi/2),py1+r3*sin(th1+pi/2);
         r2*sin(th1+pi/2),-r2*sin(th1+pi/2),py1-r3*sin(th1+pi/2),py1+r3*sin(th1+pi/2);
         r2*sin(th1+pi/2),r2*sin(th1+pi/2),py1+r4*sin(th1+pi/2),py1+r4*sin(th1+pi/2);
         -r2*sin(th1+pi/2),-r2*sin(th1+pi/2),py1-r4*sin(th1+pi/2),py1-r4*sin(th1+pi/2)];
Link1_Z=[ pz1, pz1, pz1, pz1;
          pz1+0.080, pz1+0.08, pz1+0.08, pz1+0.08;
          pz1, pz1+0.08,pz1+0.08,pz1;
          pz1, pz1+0.08,pz1+0.08,pz1];
 fill3(Link1_X',Link1_Y',Link1_Z',RobotColor,'FaceAlpha',opacity);
 
 %link 2
Link2_X=[px1+r4*cos(th2+pi/2),px1-r4*cos(th2+pi/2),px2-r5*cos(th2+pi/2),px2+r5*cos(th2+pi/2);
          px1+r4*cos(th2+pi/2),px1-r4*cos(th2+pi/2),px2-r5*cos(th2+pi/2),px2+r5*cos(th2+pi/2);
          px1+r4*cos(th2+pi/2),px1+r4*cos(th2+pi/2),px2+r5*cos(th2+pi/2),px2+r5*cos(th2+pi/2);
          px1-r4*cos(th2+pi/2),px1-r4*cos(th2+pi/2),px2-r5*cos(th2+pi/2),px2-r5*cos(th2+pi/2)];

Link2_Y=[py1+r4*sin(th2+pi/2),py1-r4*sin(th2+pi/2),py2-r5*sin(th2+pi/2),py2+r5*sin(th2+pi/2);
          py1+r4*sin(th2+pi/2),py1-r4*sin(th2+pi/2),py2-r5*sin(th2+pi/2),py2+r5*sin(th2+pi/2);
          py1+r4*sin(th2+pi/2),py1+r4*sin(th2+pi/2),py2+r5*sin(th2+pi/2),py2+r5*sin(th2+pi/2);
          py1-r4*sin(th2+pi/2),py1-r4*sin(th2+pi/2),py2-r5*sin(th2+pi/2),py2-r5*sin(th2+pi/2)];
      
 Link2_Z=[ pz2, pz2, pz2, pz2;
          pz2+0.2060+0.0615, pz2+0.206+0.0615, pz2+0.206+0.0615, pz2+0.206+0.0615;
          pz2, pz2+0.206+0.0615,pz2+0.206+0.0615,pz2;
          pz2, pz2+0.206+0.0615,pz2+0.206+0.0615,pz2];

 fill3(Link2_X',Link2_Y',Link2_Z',RobotColor,'FaceAlpha',opacity);
         
 picker(p4(1),p4(2),p4(3),o4(3),0.1,0.1);
% %% RObot que
% % define links
% line1=[[p0(1) p1(1)];[p0(2) p1(2)];[p0(3) p1(3)]];
% line2=[[p1(1) p2(1)];[p1(2) p2(2)];[p1(3) p2(3)]];
% line3=[[p2(1) p3(1)];[p2(2) p3(2)];[p2(3) p3(3)]];
% line4=[[p3(1) p4(1)];[p3(2) p4(2)];[p3(3) p4(3)]];
% 
% %link1
% line1_plot=plot3(line1(1,:),line1(2,:),line1(3,:),'color','blue','LineWidth',10);
% line1_plot.Color(4)=0.5;
% %link2
% line2_plot=plot3(line2(1,:),line2(2,:),line2(3,:),'color','green','LineWidth',10);
% line2_plot.Color(4)=0.5;
% %link3
% line3_plot=plot3(line3(1,:),line3(2,:),line3(3,:),'color','cyan','LineWidth',10);
% line3_plot.Color(4)=0.5;
% %link4
% line4_plot=plot3(line4(1,:),line4(2,:),line4(3,:),'color','yellow','LineWidth',10);
% line4_plot.Color(4)=0.5;
% plot3(Con(1,:),Con(2,:),Con(3,:),'rx')


%% position view
set(handles.SliderX,'value',p4(1));
set(handles.SliderY,'value',p4(2));
set(handles.SliderZ,'value',p4(3));
set(handles.SliderYaw,'value',o4(3)/pi*180);
set(handles.DisplayX,'string',num2str(round(p4(1),4)));
set(handles.DisplayY,'string',num2str(round(p4(2),4)));
set(handles.DisplayZ,'string',num2str(round(p4(3),4)));
set(handles.DisplayYaw,'string',num2str(o4(3)/pi*180));
data1 = [round(p1(1),4) round(p1(2),4) round(p1(3),4) round(o1(1)/pi*180,4) round(o1(2)/pi*180,4) round(o1(3)/pi*180,4);
         round(p2(1),4) round(p2(2),4) round(p2(3),4) round(o2(1)/pi*180,4) round(o2(2)/pi*180,4) round(o2(3)/pi*180,4);
         round(p3(1),4) round(p3(2),4) round(p3(3),4) round(o3(1)/pi*180,4) round(o3(2)/pi*180,4) round(o3(3)/pi*180,4);
         round(p4(1),4) round(p4(2),4) round(p4(3),4) round(o4(1)/pi*180,4) round(o4(2)/pi*180,4) round(o4(3)/pi*180,4)];
set(handles.TablePosition,'data',data1);
set(handles.DisplayCurrentX,'string',num2str(round(p4(1),4)));
set(handles.DisplayCurrentY,'string',num2str(round(p4(2),4)));
set(handles.DisplayCurrentZ,'string',num2str(round(p4(3),4)));
set(handles.DisplayCurrentYaw,'string',num2str(o4(3)/pi*180));
plotdata = [plotdata;p4(1) p4(2) p4(3)];
plot3(plotdata(:,1),plotdata(:,2),plotdata(:,3),'Color','r','MarkerSize',10);
%% view 
Az = str2num(get(handles.edit_AZ,'String'));
Et = str2num(get(handles.edit_ET,'String'));;
rotate3d on;
view(Az,Et);
end
%%
