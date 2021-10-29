classdef forward_kinnematic
       methods(Static)
           function A = get_DHmatrix(paramsDH)
               a= paramsDH(1);
               alpha=paramsDH(2);
               d=paramsDH(3);
               theta=paramsDH(4);
               sin_alpha = sin(alpha);
               sin_theta= sin(theta);
               cos_alpha = cos(alpha);
               cos_theta= cos(theta);
               A = [cos_theta -cos_alpha*sin_theta sin_alpha*sin_theta  a*cos_theta%x
                    sin_theta cos_alpha*cos_theta -sin_alpha*cos_theta  a*sin_theta%y
                    0          sin_alpha             cos_alpha            d%z
                    0              0                      0                1 ];
           end
           function T_inv=get_DHinverse(T)
               T_inv =zeros(4);
               R_inv = transpose(T(1:3 ,1:3));
               T_inv(1:3, 1:3)= R_inv;
               P=R_inv*A(1:3,4);
               T_inv(1:3,4)=P;
               T_inv(4,4)=1;
               
           end
       end
end
             