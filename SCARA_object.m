classdef SCARA_object < handle
    properties
        % a     = [a1    ; a2     ;  0  ; 0     ];
        % alpha = [0     ; pi     ;  0  ; 0    ];
        % d     = [0     ; 0      ;  d3 ; d4    ];
        % theta = [theta1; theta2 ;  0  ; theta4];
        a1 ;
        a2;
        a3=0;
        a4=0;
        alpha1=0;
        alpha2=pi;
        alpha3=0;
        alpha4=0;
        d1
        d2=0;
        d3
        d4
        theta1
        theta2
        theta3=0
        theta4      
    end
    properties(Constant)
        T_0=[1 0 0 0;
             0 1 0 0;
             0 0 1 0;
             0 0 0 1];
    end
    methods(Static)
        function obj = SCARA_object(d_1,d_4,a_1,a_2)
            obj.d1=d_1;
            obj.a1=a_1;
            obj.a2=a_2;
            obj.d4=d_4;
        end
        function [T_01, T_02, T_03, T_04]=forward_kinnematic(obj,...
                theta_1,theta_2, theta_4,d_3)
            obj.theta1=theta_1;
            obj.theta2=theta_2;
            obj.theta4=theta_4;
            obj.d3=d_3;
            paramsDH_12=[obj.a1 obj.alpha1 obj.d1 obj.theta1];
            paramsDH_23=[obj.a2 obj.alpha2 obj.d2 obj.theta2];
            paramsDH_34=[obj.a3 obj.alpha3 obj.d3 obj.theta3];
            paramsDH_45=[obj.a4 obj.alpha4 obj.d4 obj.theta4];
            A_01= forward_kinnematic.get_DHmatrix(paramsDH_12);
            A_12= forward_kinnematic.get_DHmatrix(paramsDH_23);
            A_23= forward_kinnematic.get_DHmatrix(paramsDH_34);
            A_34= forward_kinnematic.get_DHmatrix(paramsDH_45);
            
            T_01= A_01;
            T_02=T_01*A_12;
            T_03=T_02*A_23;
            T_04=T_03*A_34;% Te
            
        end
        function I = invest_kinnematic(obj,x,y,z,yaw)
             a1 = obj.a1;
             a2 = obj.a2;
             d1 = obj.d1;
             d4 = obj.d4;
             
            c2 = (x^2+y^2-a1^2-a2^2)/(2*a1*a2);
            s2 = sqrt(1-c2^2);
            D = (a1+a1*c2)^2+(a2*s2)^2;
            Dx = x*(a1+a2*c2)+y*a2*s2;
            Dy = y*(a1+a2*c2)-x*a2*s2;
            c1=Dx/D;
            s1=Dy/D;
            theta1 = atan2(s1,c1)/pi*180;          
           % theta1 = (atan2(y,x)-atan2(a2*s2,a1+a2*c2))/pi*180
            theta2 = atan2(s2,c2)/pi*180;    
            d3 = d1-d4-z;
            theta4 = -(yaw - theta1 - theta2);
             I = [theta1 theta2 theta4 d3 1];
%             if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145&& -0.2 < d3 && d3 < 0.08&&-180 < theta4 && theta4 <180
%                 I = [theta1 theta2 theta4 d3 1];
%             else
%                  I=[0 0 0 0 0];
%                  selection=questdlg('Out of workspace!',...
%                  'Error!!!',...
%                   'OK','Cancel','OK');
%             end
        end

    end
    
end
