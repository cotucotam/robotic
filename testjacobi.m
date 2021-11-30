syms a1 a2 a3 theta1 theta2 theta3 real

A01 = [cos(theta1) -sin(theta1) 0 a1*cos(theta1);
       sin(theta1) cos(theta1)  0 a1*sin(theta1);
       0           0            1 0             ;
       0           0            0 1             ];
A12 = [cos(theta2) -sin(theta2) 0 a2*cos(theta2);
       sin(theta2) cos(theta2)  0 a2*sin(theta2);
       0           0            1 0             ;
       0           0            0 1             ];
A23 = [cos(theta3) -sin(theta3) 0 a3*cos(theta3);
       sin(theta3) cos(theta3)  0 a3*sin(theta3);
       0           0            1 0             ;
       0           0            0 1             ];
A02 = A01*A12;
A03 = A02*A23;
P1 = [a1*cos(theta1);
      a1*sin(theta1);
      0             ];
Z1 = [0;0;1];

P2 = [a1*cos(theta1) + a2*cos(theta1 + theta2);
      a1*sin(theta1) + a2*sin(theta1 + theta2);
      0                                       ];
Z2 = [0;0;1];
Z3 = [0;0;1];

P3 = [a1*cos(theta1) + a2*cos(theta1 + theta2) + a3*cos(theta1 + theta2 + theta3);
      a1*sin(theta1) + a2*sin(theta1 + theta2) + a3*sin(theta1 + theta2 + theta3);
      0                                       ];
Z0 = [0;0;1];
P0 = [0;0;0];
J11 = jacobi(Z0,P3-P0)'
J12 = jacobi(Z1,P3-P1)'
J13 = jacobi(Z2,P3-P2)'

J21 = Z0;
J22 = Z1;
J23 = Z2;
J = [J11 J12 J13;
     J21 J22 J23];
function I=jacobi(u,p)
I(1)= -u(3)*p(2)+u(2)*p(3);
I(2)= u(3)*p(1)-u(1)*p(3);
I(3)= -u(2)*p(1)+u(1)*p(2);
end
 