syms theta1 theta2 theta4 d3
Scara=SCARA_object(3.72,0.095,0.45,0.4);
Scara.theta1=theta1;
Scara.theta2=theta2;
Scara.theta4=theta4;
Scara.d3=d3;
[T_01, T_02, T_03, T_04, T_05]=Scara.forward_kinnematic(Scara.theta1,Scara.theta2,Scara.theta4,Scara.d3)