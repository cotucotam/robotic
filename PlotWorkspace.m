function PlotWorkspace(handles)
global plotdata;
plotdata = null(1,3);
X=null(2,1)
Y=null(2,1)
Z=null(2,1);

% theta1 -125-->125
% theta2 -145-->145
Scara=SCARA_object(0.372,0.095,0.45,0.4);
 for theta1 = 125*pi/180:-5*pi/180:-125*pi/180
    if theta1== 125*pi/180
        for theta2= 125*pi/180:-5*pi/180:0
            Scara.theta1=theta1;
            Scara.theta2=theta2;
            Scara.d3 =0.08;
            Scara.theta4=0;
           [ A0_1, A0_2, A0_3, A0_4]=Scara.forward_kinnematic(Scara,Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3);  
           p0 = [0;0;0];
           [p4, o4] = cal_pose(A0_4,p0);
           plotdata = [plotdata;p4(1) p4(2) p4(3)];
           X=[X; p4(1) p4(1)];
           Y=[Y; p4(2) p4(2)];
           Z=[Z;0 p4(3)];
        end
    elseif theta1== -125*pi/180
         for theta2= 0:-5*pi/180:-125*pi/180
            Scara.theta1=theta1;
            Scara.theta2=theta2;
            Scara.d3 =0.08;
            Scara.theta4=0;
           [ A0_1, A0_2, A0_3, A0_4]=Scara.forward_kinnematic(Scara,Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3);  
           p0 = [0;0;0];
           [p4, o4] = cal_pose(A0_4,p0);
           plotdata = [plotdata;p4(1) p4(2) p4(3)];
           X=[X; p4(1) p4(1)];
           Y=[Y; p4(2) p4(2)];
           Z=[Z;0 p4(3)];
        end
    else 
        Scara.theta1=theta1;
        Scara.theta2=0;
        Scara.d3 =0.08;
        Scara.theta4=0;
       [ A0_1, A0_2, A0_3, A0_4]=Scara.forward_kinnematic(Scara,Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3);  
       p0 = [0;0;0];
       [p4, o4] = cal_pose(A0_4,p0);
       plotdata = [plotdata;p4(1) p4(2) p4(3)];
       X=[X; p4(1) p4(1)];
       Y=[Y; p4(2) p4(2)];
       Z=[Z;0 p4(3)];
    end
    
 end
 %plot3(plotdata(:,1),plotdata(:,2),plotdata(:,3),'Color','r','MarkerSize',10);
 fill3(plotdata(:,1),plotdata(:,2),plotdata(:,3),[0 0 1],'FaceALpha',0.1); 
 surf(X,Y,Z,'FaceALpha',0.1,'EdgeColor','none');
 plotdata = null(1,3);
 hold on
 
%%theta2=145
theta2=145*pi/180;
        for theta1= 125*pi/180:-5*pi/180:-60*pi/180
            Scara.theta1=theta1;
            Scara.theta2=theta2;
            Scara.d3 =0.08;
            Scara.theta4=0;
           [ A0_1, A0_2, A0_3, A0_4]=Scara.forward_kinnematic(Scara,Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3);  
           p0 = [0;0;0];
           [p4, o4] = cal_pose(A0_4,p0);
           plotdata = [plotdata;p4(1) p4(2) p4(3)];
           X=[X; p4(1) p4(1)];
           Y=[Y; p4(2) p4(2)];
           Z=[Z;0 p4(3)];
        end
theta2=-145*pi/180;
        for theta1= 60*pi/180:-5*pi/180:-125*pi/180
            Scara.theta1=theta1;
            Scara.theta2=theta2;
            Scara.d3 =0.08;
            Scara.theta4=0;
           [ A0_1, A0_2, A0_3, A0_4]=Scara.forward_kinnematic(Scara,Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3);  
           p0 = [0;0;0];
           [p4, o4] = cal_pose(A0_4,p0);
           plotdata = [plotdata;p4(1) p4(2) p4(3)];
           X=[X; p4(1) p4(1)];
           Y=[Y; p4(2) p4(2)];
           Z=[Z;0 p4(3)];
        end
 
%plot3(plotdata(:,1),plotdata(:,2),plotdata(:,3),'Color','r','MarkerSize',10);
 fill3(plotdata(:,1),plotdata(:,2),plotdata(:,3),[1 1 1],'FaceALpha',0.1); 
 surf(X,Y,Z,'FaceALpha',0.1,'EdgeColor','none');
 plotdata = null(1,3);
 hold off