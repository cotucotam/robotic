function  [q_max, gamma_max, OA,z_hat, O_cir]= PathPlanning2(handles)
%%
%Linear interpolation
%%
% Old value
p_x_old = str2num(get(handles.edit_p4_x,'String'));
p_y_old = str2num(get(handles.edit_p4_y,'String'));
p_z_old = str2num(get(handles.edit_p4_z,'String'));
yaw_old = str2num(get(handles.edit_p4_yaw,'String'))*pi/180;

% desired value
p_x = str2num(get(handles.edit_p_x,'String'));
p_y = str2num(get(handles.edit_p_y,'String'));
p_z = str2num(get(handles.edit_p_z,'String'));
yaw = str2num(get(handles.edit_yaw,'String'))*pi/180;
%%
% cal distance
q_max = ((p_x - p_x_old)^2+(p_y - p_y_old)^2+(p_z - p_z_old)^2)^(1/2);
% cal 3d vector parameters
%%
%%
p1 = [p_x_old ; p_y_old ; p_z_old];
p2 = [p_x     ; p_y     ; p_z];
%% 
% Vector phap tuyen
n_vec = p2 - p1;
% Trung diem AB
I = (p1+p2)/2;
% plot3(I(1),I(2),I(3),'gx')
syms x_cir y_cir z_cir
P = dot(n_vec, [x_cir-I(1);y_cir-I(2);z_cir-I(3)]);
if isreal(coeffs(P,x_cir))
     z_cir = I(3);
     y_cir = I(2)-0.5;
     x_cir = eval(solve(P,x_cir));
elseif isreal(coeffs(P,y_cir))
    x_cir = I(1)-0.5;
    z_cir = I(3);
    y_cir = eval(solve(P,y_cir))    ;
elseif isreal(coeffs(P,z_cir))
    x_cir = I(1)-0.5;
    y_cir = I(2)-0.5;
    z_cir = eval(solve(P,z_cir))  ;
elseif (p_x== p_x_old)
    x_cir = I(1)-0.5;
    y_cir = I(2)-0.5;
    z_cir = eval(solve(P,z_cir));
elseif (p_z== p_z_old)
    z_cir = I(3);
    y_cir = I(2)-0.5;
    x_cir = eval(solve(P,x_cir));
elseif (p_y== p_y_old)
    z_cir = I(3);
    y_cir = I(2)-0.5;
    x_cir = eval(solve(P,x_cir));
else
    x_cir = I(1)-0.5;
    y_cir = I(2)-0.5;
    z_cir = eval(solve(P,z_cir))  ;
end
O_cir(1) = x_cir;
O_cir(2) = y_cir;
O_cir(3) = z_cir;
% mat cau S:
% R_cir = sqrt((O_cir(1)-p1(1))^2+(O_cir(2)-p1(2))^2+(O_cir(3)-p1(3))^2);
% plot3(O(1),O(2),O(3),'bx','linewidth',5)
temp1 = O_cir' - p1;
temp2 = O_cir' - p2;
OA = (temp1);
OB = (temp2);
 z_hat = cross(OA,OB)/norm(cross(OA,OB));
%%
% gamma_max = acos(dot(OA,OB));
gamma_max = acos(dot(OA,OB)/(norm(OA)^2));
% tinh su tuong duong
% gamma = linspace(0, gamma_max ,25);
gamma = linspace(0, gamma_max ,25);
Ox = -(OA*cos(gamma) + cross(z_hat , OA)*sin(gamma));
plot3(handles.axes1,O_cir(1)+Ox(1,:),O_cir(2)+Ox(2,:),O_cir(3)+Ox(3,:),'go')
end