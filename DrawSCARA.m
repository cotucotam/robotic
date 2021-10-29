function DrawSCARA(theta_1, theta_2,d_3, theta_4, handles)
axes(hanles.axes1); 
[A01 A02 A03 A04]=Forward_Kinematic(theta_1, theta_2,d_3, theta_4, handles);
px1=A01(1,4);
px1=A01(2,4);
px1=A01(3,4);

px2=A02(1,4);
px2=A02(2,4);
px2=A02(3,4);

px3=A03(1,4);
px3=A03(2,4);
px3=A03(3,4);

px4=A04(1,4);
px4=A04(2,4);
px4=A04(3,4);

th1=theta_1;
th2=theta_2+th1;
th4= th2+theta_4;

%% Plot Coordinates

grid on
T00=[0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0]';
base=[150 0 0;0 150 0;0 0 150]';% End of Unit vector x,y,z of base
% plot coor base
Draw_xyz(base,T00);


end