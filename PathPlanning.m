function  [qmax,my_alpha,my_beta,SignX,SignY,SignZ,CurrentX,CurrentY,CurrentZ]= PathPlanning(handles)
%%
%Linear interpolation
% current value
CurrentX = str2num(get(handles.DisplayCurrentX,'String'))
CurrentY = str2num(get(handles.DisplayCurrentY,'String'))
CurrentZ = str2num(get(handles.DisplayCurrentZ,'String'))
CurrentYaw = str2num(get(handles.DisplayCurrentYaw,'String'))*pi/180

% desired value
NextX = str2num(get(handles.DisplayNextX,'String'))
NextY = str2num(get(handles.DisplayNextY,'String'))
NextZ = str2num(get(handles.DisplayNextZ,'String'))
NextYaw = str2num(get(handles.DisplayNextYaw,'String'))*pi/180

% calc sign
SignX = calc_sign(NextX,CurrentX);
SignY = calc_sign(NextY,CurrentY);
SignZ = calc_sign(NextZ,CurrentZ);

%%
% cal distance
qmax= sqrt((NextX-CurrentX)^2+(NextY-CurrentY)^2+(NextZ-CurrentZ)^2);
% cal 3d vector parameters
if NextY-CurrentY==0
    my_alpha=0;
else
    my_alpha=atan((NextY-CurrentY)/(NextX-CurrentX));
end
if NextZ-CurrentZ >=0
    my_beta= atan(sqrt((NextX-CurrentX)^2+(NextY-CurrentY)^2)/(NextZ-CurrentZ));
else 
    my_beta= atan(sqrt((NextX-CurrentX)^2+(NextY-CurrentY)^2)/(NextZ-CurrentZ))+pi;
end


