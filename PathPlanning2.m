function  [q_max, gamma_max, OA,z_hat, O_cir]= PathPlanning2(handles)
%%
%Linear interpolation
%%
% Old value
CurrentX = str2num(get(handles.DisplayCurrentX,'String'));
CurrentY = str2num(get(handles.DisplayCurrentY,'String'));
CurrentZ = str2num(get(handles.DisplayCurrentZ,'String'));
CurrentYaw = str2num(get(handles.DisplayCurrentYaw,'String'))*pi/180;

NextX = str2num(get(handles.DisplayNextX,'String'));
NextY = str2num(get(handles.DisplayNextY,'String'));
NextZ = str2num(get(handles.DisplayNextZ,'String'));
NexYaw = str2num(get(handles.DisplayNextYaw,'String'))*pi/180;
% desired value
NextNextX = str2num(get(handles.DisplayNextNextX,'String'));
NextNextY = str2num(get(handles.DisplayNextNextY,'String'));
NextNextZ = str2num(get(handles.DisplayNextNextZ,'String'));
NextNexYaw = str2num(get(handles.DisplayNextNextYaw,'String'))*pi/180;
%%
% cal distance
q_max = ((NextNextX - CurrentX)^2+(NextNextY - CurrentY)^2+(NextNextZ - CurrentZ)^2)^(1/2);
% cal 3d vector parameters
%%
%%
p1 = [CurrentX ; CurrentY ; CurrentZ]
p2 = [NextX     ; NextY     ; NextZ]
p3 = [NextNextX     ; NextNextY     ; NextNextZ]
%% 
% Vector phap tuyen 
n=cross((p1-p2),(p3-p2));
if norm(n)< 10^-3
    warning('ba diem thang hang');
    return
end
%trung diem doan 1 va doan 2
md1=0.5*(p1+p2);
md2=0.5*(p3+p2);
n1=cross((p1-p2),n);
n2=cross((p3-p2),n);
syms t u;
[st ,su]=solve(md1+n1*t == md2+n2*u,t,u)
c1=md1+n1*double(st);
r=norm(c1-p1);

O_cir(1) = c1(1);
O_cir(2) = c1(2);
O_cir(3) = c1(3)
% mat cau S:
R_cir = sqrt((O_cir(1)-p1(1))^2+(O_cir(2)-p1(2))^2+(O_cir(3)-p1(3))^2);
% plot3(O(1),O(2),O(3),'bx','linewidth',5)
temp1 = O_cir' - p1;
temp2 = O_cir' - p3;
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