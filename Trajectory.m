function Trajectory(handles)
%% define some axes
%table 1
cla(handles.axQ,'reset');
grid(handles.axQ,'on'); 
hold(handles.axQ,'on'); 
% xlabel(handles.ax_q,'time');
y_label = sprintf('${%c}$','q');
ylabel(handles.axQ,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axQdot,'reset');
grid(handles.axQdot,'on'); 
hold(handles.axQdot,'on'); 
% xlabel(handles.ax_q_dot,'time');
y_label = sprintf('$\\dot{%c}$','q');
ylabel(handles.axQdot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axQ2dot,'reset');
grid(handles.axQ2dot,'on'); 
hold(handles.axQ2dot,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axQ2dot,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = sprintf('$\\ddot{%c}$','q');
ylabel(handles.axQ2dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);

%table 2
%axX
cla(handles.axX,'reset');
grid(handles.axX,'on'); 
hold(handles.axX,'on'); 
% xlabel(handles.ax_q,'time');
y_label = sprintf('${%c}$','X');
ylabel(handles.axX,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axXdot,'reset');
grid(handles.axXdot,'on'); 
hold(handles.axXdot,'on'); 
y_label = sprintf('$\\dot{%c}$','X');
ylabel(handles.axXdot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axX2dot,'reset');
grid(handles.axX2dot,'on'); 
hold(handles.axX2dot,'on'); 
y_label = sprintf('$\\ddot{%c}$','X');
ylabel(handles.axX2dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);

%axY
cla(handles.axY,'reset');
grid(handles.axY,'on'); 
hold(handles.axY,'on'); 
y_label = sprintf('${%c}$','Y');
ylabel(handles.axY,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axYdot,'reset');
grid(handles.axYdot,'on'); 
hold(handles.axYdot,'on'); 
y_label = sprintf('$\\dot{%c}$','Y');
ylabel(handles.axYdot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axY2dot,'reset');
grid(handles.axY2dot,'on'); 
hold(handles.axY2dot,'on'); 
y_label = sprintf('$\\ddot{%c}$','Y');
ylabel(handles.axY2dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


%axZ
cla(handles.axZ,'reset');
grid(handles.axZ,'on'); 
hold(handles.axZ,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axZ,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = sprintf('${%c}$','Z');
ylabel(handles.axZ,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axZdot,'reset');
grid(handles.axZdot,'on'); 
hold(handles.axZdot,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axZdot,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = sprintf('$\\dot{%c}$','Z');
ylabel(handles.axZdot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axZ2dot,'reset');
grid(handles.axZ2dot,'on'); 
hold(handles.axZ2dot,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axZ2dot,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = sprintf('$\\ddot{%c}$','Z');
ylabel(handles.axZ2dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);

%table 3
%axTheta1
cla(handles.axTheta1,'reset');
grid(handles.axTheta1,'on'); 
hold(handles.axTheta1,'on'); 
% xlabel(handles.ax_q,'time');
y_label = '$$\theta_1$$';
ylabel(handles.axTheta1,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axTheta1dot,'reset');
grid(handles.axTheta1dot,'on'); 
hold(handles.axTheta1dot,'on'); 
y_label = '$$\dot{\theta_1}$$';
ylabel(handles.axTheta1dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axTheta12dot,'reset');
grid(handles.axTheta12dot,'on'); 
hold(handles.axTheta12dot,'on'); 
y_label = '$$\ddot{\theta_1}$$';
ylabel(handles.axTheta12dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);

%axTheta2
cla(handles.axTheta2,'reset');
grid(handles.axTheta2,'on'); 
hold(handles.axTheta2,'on'); 
% xlabel(handles.ax_q,'time');
y_label = '$$\theta_2$$';
ylabel(handles.axTheta2,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axTheta2dot,'reset');
grid(handles.axTheta2dot,'on'); 
hold(handles.axTheta2dot,'on'); 
y_label = '$$\dot{\theta_2}$$';
ylabel(handles.axTheta2dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axTheta22dot,'reset');
grid(handles.axTheta22dot,'on'); 
hold(handles.axTheta22dot,'on'); 
y_label = '$$\ddot{\theta_2}$$';
ylabel(handles.axTheta22dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


%axD3
cla(handles.axD3,'reset');
grid(handles.axD3,'on'); 
hold(handles.axD3,'on'); 
y_label = '$$D_3$$';
ylabel(handles.axD3,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axD3dot,'reset');
grid(handles.axD3dot,'on'); 
hold(handles.axD3dot,'on'); 
y_label = '$$\dot{D_3}$$';
ylabel(handles.axD3dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axD32dot,'reset');
grid(handles.axD32dot,'on'); 
hold(handles.axD32dot,'on'); 
y_label = '$$\ddot{D_3}$$';
ylabel(handles.axD32dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);

%axTheta4
cla(handles.axTheta4,'reset');
grid(handles.axTheta4,'on'); 
hold(handles.axTheta4,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axTheta4,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = '$$\theta_4$$';
ylabel(handles.axTheta4,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axTheta4dot,'reset');
grid(handles.axTheta4dot,'on'); 
hold(handles.axTheta4dot,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axTheta4dot,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = '$$\dot{\theta_4}$$';
ylabel(handles.axTheta4dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);


cla(handles.axTheta42dot,'reset');
grid(handles.axTheta42dot,'on'); 
hold(handles.axTheta42dot,'on'); 
x_label=sprintf('Time (s)');
xlabel(handles.axTheta42dot,x_label,'Interpreter', 'LaTeX','fontsize',10);
y_label = '$$\ddot{\theta_4}$$'
ylabel(handles.axTheta42dot,y_label, 'Interpreter', 'LaTeX','fontsize',10);
%-------------------------------------------------------------------------
%%
if get(handles.radiobuttonLinear,'value') == 1
    path_planning_type = 'linear';
elseif get(handles.radiobuttonCircular,'value') == 1
    path_planning_type = 'circular';
end

if strcmp(path_planning_type,'linear')
    [q_max,my_alpha,my_beta,x_sign,y_sign,z_sign,p_x_old,p_y_old,p_z_old]= PathPlanning(handles);
elseif strcmp(path_planning_type,'circular')
    [q_max, gamma_max, OA,z_hat, O_cir]= PathPlanning2(handles);
end

vmax= str2num(get(handles.DisplayVmax,'String'));
amax= str2num(get(handles.DisplayAmax,'String'));
[qmax,my_alpha,my_beta,SignX,SignY,SignZ,CurrentX,CurrentY,CurrentZ]= PathPlanning(handles);
if qmax ~= 0
    if vmax> sqrt(amax*qmax/2) 
        vmax=sqrt(amax*qmax/2);
    end
    tc=2*vmax/amax
    tf=(2*vmax^2 + amax*qmax)/(amax*vmax)
    %% plot p, v, a
    q_2dot =0;
    q_dot =0;
    q =0;
    q_2dot_plot =[];
    q_dot_plot = [];
    q_plot= [];
    q_x_plot= [];
    q_y_plot= [];
    q_z_plot= [];
    q_x_dot_plot= [];
    q_y_dot_plot= [];
    q_z_dot_plot= [];
    q_x_2dot_plot= [];
    q_y_2dot_plot= [];
    q_z_2dot_plot= [];
    theta1_ = [];
    theta1_dot= [];
    theta1_2dot= [];
    theta2_ = [];
    theta2_dot= [];
    theta2_2dot= [];
    theta4_ = [];
    theta4_dot= [];
    theta4_2dot= [];
    d3_ = [];
    d3_dot = [];
    d3_2dot = [];
    % theo jacobian 
    theta1_dot_J = [];
    theta2_dot_J = [];
    d3_dot_J = [];
    theta4_dot_J = [];
    time  = [] ;
    time_update=0;
    N =50;
    t = linspace(0,tf,N);
    for i =1:N
    if(0<= t(i) && t(i)<= tc/2)
        a0=0;
        a1=0;
        a2=0;
        a3=amax/(3*tc);
        q_tempt= a0+a1*t(i)+a2*t(i)^2+a3*t(i)^3;
        q_dot_tempt = a1+2*a2*t(i)+3*a3*t(i)^2;
        q_2dot_tempt     = 2*a2+6*a3*t(i); 
    elseif( tc/2<t(i) && t(i)<=tc)
        a0=-(tc*(3*vmax - 2*amax*tc))/6;
        a1=vmax - amax*tc;
        a2=amax;
        a3=-amax/(3*tc);
        q_tempt= a0+a1*t(i)+a2*t(i)^2+a3*t(i)^3;
        q_dot_tempt = a1+2*a2*t(i)+3*a3*t(i)^2;
        q_2dot_tempt     = 2*a2+6*a3*t(i); 
    elseif( tc<t(i) && t(i)<=tf-tc)
        a0=-(tc*vmax)/2;
        a1=vmax;
        q_tempt= a0+a1*t(i);
        q_dot_tempt  = a1;
        q_2dot_tempt = 0;
    elseif( (tf-tc)<t(i) && t(i)<=(tf-tc/2))
        a0=-(2*amax*tc^3 - 6*amax*tc^2*tf + 3*vmax*tc^2 + 6*amax*tc*tf^2 - 2*amax*tf^3)/(6*tc);
        a1=(- amax*tc^2 + 2*amax*tc*tf + vmax*tc - amax*tf^2)/tc;
        a2=-(amax*(tc - tf))/tc;
        a3=-amax/(3*tc);
        q_tempt= a0+a1*t(i)+a2*t(i)^2+a3*t(i)^3;
        q_dot_tempt = a1+2*a2*t(i)+3*a3*t(i)^2;
        q_2dot_tempt     = 2*a2+6*a3*t(i); 
    elseif( (tf-tc/2)<t(i) && (t(i)<=tf)) 
        a0=(- amax*tf^3 + 3*qmax*tc)/(3*tc);
        a1=(amax*tf^2)/tc;
        a2=-(amax*tf)/tc;
        a3=amax/(3*tc);
        q_tempt= a0+a1*t(i)+a2*t(i)^2+a3*t(i)^3;
        q_dot_tempt = a1+2*a2*t(i)+3*a3*t(i)^2;
        q_2dot_tempt     = 2*a2+6*a3*t(i); 
    end
    % Update
    q_2dot_plot = [q_2dot_plot ; q_2dot_tempt];
    q_dot_plot  = [q_dot_plot ; q_dot_tempt];
    q_plot      = [q_plot ; q_tempt];
    time  = [time ; time_update];
    time_update = time_update + tf/N; 
    
    q_2dot=q_2dot_tempt;
    q_dot=q_dot_tempt;
    q=q_tempt;
    if strcmp(path_planning_type,'linear')
        %% Linear path planning
        % Calc and plot q_x, q_y, q_z
        q_x  = CurrentX + SignX * q * sin(my_beta) * cos(my_alpha)              ;
        q_y  = CurrentY + SignY * q * sin(my_beta) * sin(abs(my_alpha))         ;
        q_z  = CurrentZ + SignZ * q * abs( cos(my_beta))                        ;
        % Calc and plot q_x_dot, q_y_dot, q_z_dot
        q_x_dot  = SignX * q_dot * sin(my_beta) * cos(my_alpha)              ;
        q_y_dot  = SignY * q_dot * sin(my_beta) * sin(abs(my_alpha))         ;
        q_z_dot  = SignZ * q_dot * abs( cos(my_beta))                        ;
        % Calc and plot q_x_dot, q_y_dot, q_z_dot
        q_x_2dot  = SignX * q_2dot * sin(my_beta)* cos(my_alpha)            ;
        q_y_2dot  = SignY * q_2dot * sin(my_beta) * sin(abs(my_alpha))       ;
        q_z_2dot  = SignZ * q_2dot * abs( cos(my_beta))                      ;
    elseif strcmp(path_planning_type,'circular')% q_max tuong duong gamma_max ; q tuong duong gamma;
        %
        gamma = (q * gamma_max/q_max)';
        Ox = -(cos(gamma).*OA + sin(gamma).*cross(z_hat , OA));
        q_x  = O_cir(1) + Ox(1,:)   ;
        q_y  = O_cir(2) + Ox(2,:)   ;
        q_z  = O_cir(3) + Ox(3,:)   ;
        %
        % Calc and plot q_x_dot, q_y_dot, q_z_dot
        gamma_dot = (q_dot  * gamma_max/q_max)';
        Ox_dot = -(-gamma_dot.*sin(gamma).*OA + gamma_dot.*cos(gamma).*cross(z_hat , OA));
        q_x_dot  = Ox_dot(1,:);             
        q_y_dot  = Ox_dot(2,:);
        q_z_dot  = Ox_dot(3,:);           

    % Calc and plot q_x_dot, q_y_dot, q_z_dot
        gamma_2dot = (q_2dot * gamma_max/q_max)';
        Ox_2dot = (gamma_2dot.*sin(gamma).*OA + gamma_dot.^2.*cos(gamma).*OA ...
            - gamma_2dot.*cos(gamma).*cross(z_hat , OA) + gamma_dot.^2.*sin(gamma).*cross(z_hat , OA));
        q_x_2dot  =  Ox_2dot(1,:)  ;
        q_y_2dot  =  Ox_2dot(2,:)  ;     
        q_z_2dot  =  Ox_2dot(3,:)  ;        
    end
    % update
    q_x_plot=[q_x_plot;q_x];
    q_y_plot=[q_y_plot;q_y];
    q_z_plot=[q_z_plot;q_z];
    q_x_dot_plot=[q_x_dot_plot;q_x_dot];
    q_y_dot_plot=[q_y_dot_plot;q_y_dot];
    q_z_dot_plot=[q_z_dot_plot;q_z_dot];
    q_x_2dot_plot=[q_x_2dot_plot;q_x_2dot];
    q_y_2dot_plot=[q_y_2dot_plot;q_y_2dot];
    q_z_2dot_plot=[q_z_2dot_plot;q_z_2dot];
    x = q_x;
    y = q_y;
    z = q_z;
    yaw = str2num(get(handles.DisplayCurrentYaw,'String'));
    Scara=SCARA_object(0.372,0.095,0.45,0.4);
    I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
    if I(5) == 1
        set(handles.DisplayTheta1,'string',num2str(I(1))); 
        set(handles.DisplayTheta2,'string',num2str(I(2)));
        set(handles.DisplayTheta4,'string',num2str(I(3)));
        set(handles.DisplayD3,'string',num2str(I(4))); 
        set(handles.SliderTheta1,'value',I(1));
        set(handles.SliderTheta2,'value',I(2));
        set(handles.SliderTheta4,'value',I(3));
        set(handles.SliderD3,'value',I(4));
        plot_robot(handles);
    else
        break;
    end
        theta1_ = [theta1_;I(1)];
        theta2_ = [theta2_;I(2)];
        theta4_ = [theta4_;I(3)];
        d3_ = [d3_;I(4)];
        
        if i>1
        theta1_dot = [theta1_dot; (theta1_(i)-theta1_(i-1))/tf*50];
        theta2_dot = [theta2_dot; (theta2_(i)-theta2_(i-1))/tf*50];
        theta4_dot = [theta4_dot; (theta4_(i)-theta4_(i-1))/tf*50];
        d3_dot     = [d3_dot    ; (d3_(i)-d3_(i-1))/tf*50];
        end

        if(i>2)
        theta1_2dot = [theta1_2dot; (theta1_dot(i-1)-theta1_dot(i-2))/tf*50];
        theta2_2dot = [theta2_2dot; (theta2_dot(i-1)-theta2_dot(i-2))/tf*50];
        theta4_2dot = [theta4_2dot; (theta4_dot(i-1)-theta4_dot(i-2))/tf*50];
        d3_2dot     = [d3_2dot    ; (d3_dot(i-1)-d3_dot(i-2))/tf*50];
        end
    pause(tf/N);
    %% plot 
    %table 1
    plot(handles.axQ,time,q_plot,'linewidth',2);
    grid(handles.axQ,'on'); 
    plot(handles.axQdot,time,q_dot_plot,'linewidth',2);
    grid(handles.axQdot,'on'); 
    plot(handles.axQ2dot,time,q_2dot_plot,'linewidth',2);
    grid(handles.axQ2dot,'on');
    %table 2
    %X
    plot(handles.axX,time,q_x_plot,'linewidth',2);
    grid(handles.axX,'on'); 
    plot(handles.axXdot,time,q_x_dot_plot,'linewidth',2);
    grid(handles.axXdot,'on'); 
    plot(handles.axX2dot,time,q_x_2dot_plot,'linewidth',2);
    grid(handles.axX2dot,'on');
    %Y
    plot(handles.axY,time,q_y_plot,'linewidth',2);
    grid(handles.axY,'on'); 
    plot(handles.axYdot,time,q_y_dot_plot,'linewidth',2);
    grid(handles.axYdot,'on'); 
    plot(handles.axY2dot,time,q_y_2dot_plot,'linewidth',2);
    grid(handles.axY2dot,'on');
    %Z
    plot(handles.axZ,time,q_z_plot,'linewidth',2);
    grid(handles.axZ,'on'); 
    plot(handles.axZdot,time,q_z_dot_plot,'linewidth',2);
    grid(handles.axZdot,'on'); 
    plot(handles.axZ2dot,time,q_z_2dot_plot,'linewidth',2);
    grid(handles.axZ2dot,'on');
    %table 3
    %Theta1
    plot(handles.axTheta1,time,theta1_,'linewidth',2);
    grid(handles.axTheta1,'on'); 
    plot(handles.axTheta1dot,time(1:end-1),theta1_dot,'linewidth',2);
    grid(handles.axTheta1dot,'on'); 
    plot(handles.axTheta12dot,time(1:end-2),theta1_2dot,'linewidth',2);
    grid(handles.axTheta12dot,'on');
    %Theta2
    plot(handles.axTheta2,time,theta2_,'linewidth',2);
    grid(handles.axTheta2,'on'); 
    plot(handles.axTheta2dot,time(1:end-1),theta2_dot-1,'linewidth',2);
    grid(handles.axTheta2dot,'on'); 
    plot(handles.axTheta22dot,time(1:end-2),theta2_2dot-2,'linewidth',2);
    grid(handles.axTheta22dot,'on');
    %D3
    plot(handles.axD3,time,d3_,'linewidth',2);
    grid(handles.axD3,'on'); 
    plot(handles.axD3dot,time(1:end-1),d3_dot-1,'linewidth',2);
    grid(handles.axD3dot,'on'); 
    plot(handles.axD32dot,time(1:end-2),d3_2dot-2,'linewidth',2);
    grid(handles.axD32dot,'on');
    %theta4
    plot(handles.axTheta4,time,theta4_,'linewidth',2);
    grid(handles.axTheta4,'on'); 
    plot(handles.axTheta4dot,time(1:end-1),theta4_dot-1,'linewidth',2);
    grid(handles.axTheta4dot,'on'); 
    plot(handles.axTheta42dot,time(1:end-2),theta4_2dot-2,'linewidth',2);
    grid(handles.axTheta42dot,'on');
    end
    
end