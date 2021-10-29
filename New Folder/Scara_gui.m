function varargout = Scara_gui(varargin)
% SCARA_GUI MATLAB code for Scara_gui.fig
%      SCARA_GUI, by itself, creates a new SCARA_GUI or raises the existing
%      singleton*.
%
%      H = SCARA_GUI returns the handle to a new SCARA_GUI or the handle to
%      the existing singleton*.
%
%      SCARA_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCARA_GUI.M with the given input arguments.
%
%      SCARA_GUI('Property','Value',...) creates a new SCARA_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Scara_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Scara_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Scara_gui

% Last Modified by GUIDE v2.5 13-Oct-2021 23:54:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Scara_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Scara_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Scara_gui is made visible.
function Scara_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Scara_gui (see VARARGIN)

% Choose default command line output for Scara_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Scara_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Scara_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function theta_1_Callback(hObject, eventdata, handles)
% hObject    handle to theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_1 as text
%        str2double(get(hObject,'String')) returns contents of theta_1 as a double


% --- Executes during object creation, after setting all properties.
function theta_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_2_Callback(hObject, eventdata, handles)
% hObject    handle to theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_2 as text
%        str2double(get(hObject,'String')) returns contents of theta_2 as a double


% --- Executes during object creation, after setting all properties.
function theta_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_4_Callback(hObject, eventdata, handles)
% hObject    handle to theta_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_4 as text
%        str2double(get(hObject,'String')) returns contents of theta_4 as a double


% --- Executes during object creation, after setting all properties.
function theta_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X_Callback(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X as text
%        str2double(get(hObject,'String')) returns contents of X as a double


% --- Executes during object creation, after setting all properties.
function X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y_Callback(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y as text
%        str2double(get(hObject,'String')) returns contents of Y as a double


% --- Executes during object creation, after setting all properties.
function Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z_Callback(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z as text
%        str2double(get(hObject,'String')) returns contents of Z as a double


% --- Executes during object creation, after setting all properties.
function Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Forward.
function btn_Forward_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
the1 = str2num(get(handles.theta_1,'String'));
if(the1>180)the1=180;
elseif(the1<-180)the1=-180;
set(handles.theta_1,'string',num2str(the1));
end
set(handles.Theta1_Slider,'value',the1);
the2 = str2num(get(handles.theta_2,'String'));
if(the2>130)the2=130;
elseif(the2<-120)the2=-130;
set(handles.theta_2,'string',num2str(the2));
end
set(handles.Theta2_Slider,'value',the2);
the4 = str2num(get(handles.theta_4,'String'));
if(the4>180)the4=180;
elseif(the4<-180)the4=-180;
set(handles.theta_4,'string',num2str(the4));
end
set(handles.Theta4_Slider,'value',the4);
d3 = -str2num(get(handles.d3,'String'));
if(d3<-3)d3=-3;
elseif(d3>0)d3=0;
set(handles.d3,'string',num2str(-d3));
end
set(handles.d3_Slider,'value',-d3);
T = Scara_cal(the1,the2,the4,d3);
axes(handles.axes1);
ve_robot;
set(handles.X,'string',num2str(T(1))); 
set(handles.Y,'string',num2str(T(2)));
set(handles.Z,'string',num2str(T(3)));
set(handles.ROLL,'string',num2str(T(4))); 
set(handles.PITCH,'string',num2str(T(5)));
set(handles.YAW,'string',num2str(T(6)));


function d3_Callback(hObject, eventdata, handles)
% hObject    handle to d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d3 as text
%        str2double(get(hObject,'String')) returns contents of d3 as a double


% --- Executes during object creation, after setting all properties.
function d3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ROLL_Callback(hObject, eventdata, handles)
% hObject    handle to ROLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROLL as text
%        str2double(get(hObject,'String')) returns contents of ROLL as a double


% --- Executes during object creation, after setting all properties.
function ROLL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PITCH_Callback(hObject, eventdata, handles)
% hObject    handle to PITCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PITCH as text
%        str2double(get(hObject,'String')) returns contents of PITCH as a double


% --- Executes during object creation, after setting all properties.
function PITCH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PITCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YAW_Callback(hObject, eventdata, handles)
% hObject    handle to YAW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YAW as text
%        str2double(get(hObject,'String')) returns contents of YAW as a double


% --- Executes during object creation, after setting all properties.
function YAW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YAW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Invest.
function btn_Invest_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Invest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2num(get(handles.X,'String'));
y = str2num(get(handles.Y,'String'));
z = str2num(get(handles.Z,'String'));
yaw = str2num(get(handles.YAW,'String'));
I = Scara_invest(x,y,z,yaw);
T = Scara_cal(I(1),I(2),I(3),I(4));
axes(handles.axes1);
ve_robot;
set(handles.theta_1,'string',num2str(I(1))); 
set(handles.theta_2,'string',num2str(I(2)));
set(handles.theta_4,'string',num2str(I(3)));
set(handles.d3,'string',num2str(-I(4))); 
set(handles.Theta1_Slider,'value',I(1));
set(handles.Theta2_Slider,'value',I(2));
set(handles.Theta4_Slider,'value',I(3));
set(handles.d3_Slider,'value',-I(4));
function T = Scara_cal(the1,the2,the4,d3)
%syms al1 al2 al3 al4 the1 the2 the3 the4 d1 d2 d3 d4 ;
al1 = 0 ;
al2 = 0 ;
al3 = 0;
al4 = 180;
the3 = 0 ;
d1 = 3;
d2 = 0;
d4 = 0;
a1 = 2;
a2 = 2 ;
a3 = 0 ;
a4 = 0;
global A1;
global A2;
global A3;
global A4;
A1 = [cos_rad(the1) -cos_rad(al1)*sin_rad(the1)  sin_rad(al1)*sin_rad(the1) a1*cos_rad(the1);
      sin_rad(the1) cos_rad(al1)*cos_rad(the1) -sin_rad(al1)*cos_rad(the1) a1*sin_rad(the1);
      0 sin_rad(al1) cos_rad(al1) d1;
      0 0 0 1];
A2 = [cos_rad(the2) -cos_rad(al2)*sin_rad(the2)  sin_rad(al2)*sin_rad(the2) a2*cos_rad(the2);
      sin_rad(the2) cos_rad(al2)*cos_rad(the2) -sin_rad(al2)*cos_rad(the2) a2*sin_rad(the2);
      0 sin_rad(al2) cos_rad(al2) d2;
      0 0 0 1];
A3 = [cos_rad(the3) -cos_rad(al3)*sin_rad(the3)  sin_rad(al3)*sin_rad(the3) a3*cos_rad(the3);
      sin_rad(the3) cos_rad(al3)*cos_rad(the3) -sin_rad(al3)*cos_rad(the3) a3*sin_rad(the3);
      0 sin_rad(al3) cos_rad(al3) d3;
      0 0 0 1];
A4 = [cos_rad(the4) -cos_rad(al4)*sin_rad(the4)  sin_rad(al4)*sin_rad(the4) a4*cos_rad(the4);
      sin_rad(the4) cos_rad(al4)*cos_rad(the4) -sin_rad(al4)*cos_rad(the4) a4*sin_rad(the4);
      0 sin_rad(al4) cos_rad(al4) d4;
      0 0 0 1];
A = A1*A2*A3*A4;
if(the4>=0)
        yaw = (atan2(A(2,1),A(1,1)))*180/pi;
        roll = (atan2(A(3,2),A(3,3)))*180/pi;
        pitch = (atan2(-A(3,1),sqrt((A(3,2))^2+(A(3,3))^2)))*180/pi;
else
        yaw =(atan2(-A(2,1),-A(1,1)))*180/pi-180;
        roll = 180 - (atan2(-A(3,2),-A(3,3)))*180/pi;
        pitch =(atan2(-A(3,1),-sqrt((A(3,2))^2+(A(3,3))^2)))*180/pi+180;
end
%Ma tran thong tin Scara
T = [A(1,4) A(2,4) A(3,4) roll pitch yaw];
return 
function ve_robot
%Lay toa do cac joint
global A1;
global A2;
global A3;
global A4;
J1 = A1;
J2 = J1*A2;
J3 = J2*A3;
J4 = J3*A4;
%Tao khung vuc quan sat
hold off
for i = -5:5
plot3([-5 5],[i i],[0 0],'g')
hold on
plot3([i i],[-5 5],[0 0],'g')
hold on
end

plot3([-5 -5],[5 5],[-2 4],'w')
hold on
plot3([-5 5],[5 5],[0 0],'k')
hold on
plot3([5 5],[-5 5],[0 0],'k')
hold on
plot3([-5 5],[-5 -5],[0 0],'k')
hold on
plot3([-5 -5],[-5 5],[0 0],'k')
hold on
xlabel('x');
ylabel('y');
zlabel('z');
plot3([0 0 J1(13)],[0 0 J1(14)],[0 3 J1(15)],'color','blue','linewidth',5)
hold on
plot3([J1(13) J2(13)],[J1(14) J2(14)],[J1(15) J2(15)],'color','green','linewidth',5)
hold on
plot3([J2(13) J3(13)],[J2(14) J3(14)],[J2(15) J3(15)],'color','red','linewidth',5)
hold on
plot3([J3(13) J4(13)],[J3(14) J4(14)],[J3(15) J4(15)],'color','yellow','linewidth',5)
hold on
grid on
%Ve he truc toa do
%Ve he truc toa do Base
goc_toa_do0(0,0,0)
%Ve he truc toa do 1
goc_toa_do1(J1(1,4),J1(2,4),J1(3,4),J1)
%Ve he truc toa do 2
goc_toa_do2(J2(1,4),J2(2,4),J2(3,4),J2)
%Ve he truc toa do 3
goc_toa_do3(J4(1,4),J4(2,4),J4(3,4),J3)
%Ve he truc toa do 4
goc_toa_do4(J4(1,4),J4(2,4),J4(3,4)-0.5,J4)
%Ve tay gap SCARA
hold on
quiversensorx = quiver3(J4(1,4),J4(2,4),J4(3,4),J4(1,1)/2,J4(2,1)/2,J4(3,1));
set(quiversensorx, 'Color', 'black','LineWidth', 4);
quiversensorx = quiver3(J4(1,4),J4(2,4),J4(3,4),-J4(1,1)/2,-J4(2,1)/2,J4(3,1));
set(quiversensorx, 'Color', 'black','LineWidth', 4);
quiversensorz = quiver3(J4(1,4)+J4(1,1)/2,J4(2,4)+J4(1,2)/2,J4(3,4)+J4(1,3)/2,J4(1,3)/2,J4(2,3)/2,J4(3,3)/2);
set(quiversensorz, 'Color', 'black','LineWidth', 4);
quiversensorz = quiver3(J4(1,4)-J4(1,1)/2,J4(2,4)-J4(1,2)/2,J4(3,4)-J4(1,3)/2,J4(1,3)/2,J4(2,3)/2,J4(3,3)/2);
set(quiversensorz, 'Color', 'black','LineWidth', 4);
return
function A = cos_rad (X)
if(X>=0)k = (X-90)/180;
else k = (X+90)/180;
end
if (mod(k,2)==0)A = 0;
else A = cos(X*pi/180);
end
return
function A = sin_rad (X)
if(X>=0)k = X/90;
else k = (X+180)/90;
end
if (mod(k,2)==0)A = 0;
else A = sin(X*pi/180);
end
return
function goc_toa_do0(x,y,z)
    hold on
    quiversensorx = quiver3(x,y,z,1,0,0);
    quiversensory = quiver3(x,y,z,0,1,0);
    quiversensorz = quiver3(x,y,z,0,0,1);
    plot3(x,y,z,'m.','MarkerSize',30);
    set(quiversensorx, 'Color', 'blue');
    set(quiversensory, 'Color', 'black');
    set(quiversensorz, 'Color', 'red');
    
    set(quiversensorx, 'LineWidth', 1);
    set(quiversensory, 'LineWidth', 1);
    set(quiversensorz, 'LineWidth', 1);
    textx = text(1,0,0,'x0');
    set(textx,'color','blue');
    texty = text(0,1,0,'y0');
	set(texty,'color','black');
    textz = text(0,0,1,'z0');
    set(textz,'color','red');
return 
function goc_toa_do1(x,y,z,u)
    hold on
    quiversensorx = quiver3(x,y,z,u(1,1),u(2,1),u(3,1));
    quiversensory = quiver3(x,y,z,u(1,2),u(2,2),u(3,2));
    quiversensorz = quiver3(x,y,z,u(1,3),u(2,3),u(3,3));
    plot3(x,y,z,'m.','MarkerSize',30);
    set(quiversensorx, 'Color', 'blue');
    set(quiversensory, 'Color', 'black');
    set(quiversensorz, 'Color', 'red');
    
    set(quiversensorx, 'LineWidth', 1);
    set(quiversensory, 'LineWidth', 1);
    set(quiversensorz, 'LineWidth', 1);
    textx = text(x+u(1,1),y+u(2,1),z+u(3,1),'x1');
    set(textx,'color','blue');
    texty = text(x+u(1,2),y+u(2,2),z+u(3,2),'y1');
    set(texty,'color','black');
    textz = text(x+u(1,3),y+u(2,3),z+u(3,3),'z1');
    set(textz,'color','red');
return 
function goc_toa_do2(x,y,z,u)
    hold on
    quiversensorx = quiver3(x,y,z,u(1,1),u(2,1),u(3,1));
    quiversensory = quiver3(x,y,z,u(1,2),u(2,2),u(3,2));
    quiversensorz = quiver3(x,y,z,u(1,3),u(2,3),u(3,3));
    plot3(x,y,z,'m.','MarkerSize',40);
    set(quiversensorx, 'Color', 'blue');
    set(quiversensory, 'Color', 'black');
    set(quiversensorz, 'Color', 'red');
    
    set(quiversensorx, 'LineWidth', 1);
    set(quiversensory, 'LineWidth', 1);
    set(quiversensorz, 'LineWidth', 1);
    textx = text(x+u(1,1),y+u(2,1),z+u(3,1),'x2');
    set(textx,'color','blue');
    texty = text(x+u(1,2),y+u(2,2),z+u(3,2),'y2');
    set(texty,'color','black');
    textz = text(x+u(1,3),y+u(2,3),z+u(3,3),'z2');
    set(textz,'color','red');
return
function goc_toa_do3(x,y,z,u)
    hold on
    quiversensorx = quiver3(x,y,z,u(1,1),u(2,1),u(3,1));
    quiversensory = quiver3(x,y,z,u(1,2),u(2,2),u(3,2));
    quiversensorz = quiver3(x,y,z,u(1,3),u(2,3),u(3,3));
    plot3(x,y,z,'m.','MarkerSize',30);
    set(quiversensorx, 'Color', 'blue');
    set(quiversensory, 'Color', 'black');
    set(quiversensorz, 'Color', 'red');
    
    set(quiversensorx, 'LineWidth', 1);
    set(quiversensory, 'LineWidth', 1);
    set(quiversensorz, 'LineWidth', 1);
    textx = text(x+u(1,1),y+u(2,1),z+u(3,1),'x3');
    set(textx,'color','blue');
    texty = text(x+u(1,2),y+u(2,2),z+u(3,2),'y3');
    set(texty,'color','black');
    textz = text(x+u(1,3),y+u(2,3),z+u(3,3),'z3');
    set(textz,'color','red');
 return
    function goc_toa_do4(x,y,z,u)
    hold on
    quiversensorx = quiver3(x,y,z,u(1,1),u(2,1),u(3,1));
    quiversensory = quiver3(x,y,z,u(1,2),u(2,2),u(3,2));
    quiversensorz = quiver3(x,y,z,u(1,3),u(2,3),u(3,3));
    plot3(x,y,z,'m.','MarkerSize',30);
    set(quiversensorx, 'Color', 'blue');
    set(quiversensory, 'Color', 'black');
    set(quiversensorz, 'Color', 'red');
    
    set(quiversensorx, 'LineWidth', 1);
    set(quiversensory, 'LineWidth', 1);
    set(quiversensorz, 'LineWidth', 1);
    textx = text(x+u(1,1),y+u(2,1),z+u(3,1),'x4');
    set(textx,'color','blue');
    texty = text(x+u(1,2),y+u(2,2),z+u(3,2),'y4');
    set(texty,'color','black');
    textz = text(x+u(1,3),y+u(2,3),z+u(3,3),'z4');
    set(textz,'color','red');
 return
 function I = Scara_invest(x,y,z,yaw)
 a1 = 2;
 a2 = 2;
 d1 = 3;
 theta2 = real(acos((x.^2+y^2-a1^2-a2^2)/(2*a1*a2))*180/pi);
 theta1 = atan2d(-a2*sin_rad(theta2)*x+(a1+a2*cos_rad(theta2))*y, (a1+a2*cos_rad(theta2))*x + a2*sin_rad(theta2)*y);
 theta4 = yaw - theta1 - theta2;
 d3 = z - d1;
 I = [theta1 theta2 theta4 d3];
 return 
        




% --- Executes on slider movement.
function Theta1_Slider_Callback(hObject, eventdata, handles)
% hObject    handle to Theta1_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_1 = get(hObject,'value');
set(handles.theta_1,'string',num2str(val_1));
the1 = val_1;
the2 = str2num(get(handles.theta_2,'String'));
the4 = str2num(get(handles.theta_4,'String'));
d3 = -str2num(get(handles.d3,'String'));
T = Scara_cal(the1,the2,the4,d3);
axes(handles.axes1);
ve_robot;
 %Hien thi ket qua len GUI
set(handles.X,'string',num2str(T(1))); 
set(handles.Y,'string',num2str(T(2)));
set(handles.Z,'string',num2str(T(3)));
set(handles.ROLL,'string',num2str(T(4))); 
set(handles.PITCH,'string',num2str(T(5)));
set(handles.YAW,'string',num2str(T(6)));


% --- Executes during object creation, after setting all properties.
function Theta1_Slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta1_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Theta2_Slider_Callback(hObject, eventdata, handles)
% hObject    handle to Theta2_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val_2 = get(hObject,'value');
set(handles.theta_2,'string',num2str(val_2));
the1 = str2num(get(handles.theta_1,'String'));
the2 = val_2;
the4 = str2num(get(handles.theta_4,'String'));
d3 = -str2num(get(handles.d3,'String'));
T = Scara_cal(the1,the2,the4,d3);
axes(handles.axes1);
ve_robot;
 %Hien thi ket qua len GUI
set(handles.X,'string',num2str(T(1))); 
set(handles.Y,'string',num2str(T(2)));
set(handles.Z,'string',num2str(T(3)));
set(handles.ROLL,'string',num2str(T(4))); 
set(handles.PITCH,'string',num2str(T(5)));
set(handles.YAW,'string',num2str(T(6)));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Theta2_Slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta2_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Theta4_Slider_Callback(hObject, eventdata, handles)
% hObject    handle to Theta4_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_4 = get(hObject,'value');
set(handles.theta_4,'string',num2str(val_4));
the1 = str2num(get(handles.theta_1,'String'));
the2 = str2num(get(handles.theta_2,'String'));
the4 = val_4;
d3 = -str2num(get(handles.d3,'String'));
T = Scara_cal(the1,the2,the4,d3);
axes(handles.axes1);
ve_robot;
 %Hien thi ket qua len GUI
set(handles.X,'string',num2str(T(1))); 
set(handles.Y,'string',num2str(T(2)));
set(handles.Z,'string',num2str(T(3)));
set(handles.ROLL,'string',num2str(T(4))); 
set(handles.PITCH,'string',num2str(T(5)));
set(handles.YAW,'string',num2str(T(6)));
% --- Executes during object creation, after setting all properties.
function Theta4_Slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta4_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function d3_Slider_Callback(hObject, eventdata, handles)
% hObject    handle to d3_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_3 = get(hObject,'value');
set(handles.d3,'string',num2str(val_3));
the1 = str2num(get(handles.theta_1,'String'));
the2 = str2num(get(handles.theta_2,'String'));
the4 = str2num(get(handles.theta_4,'String'));
d3 = -val_3;
T = Scara_cal(the1,the2,the4,d3);
axes(handles.axes1);
ve_robot;
 %Hien thi ket qua len GUI
set(handles.X,'string',num2str(T(1))); 
set(handles.Y,'string',num2str(T(2)));
set(handles.Z,'string',num2str(T(3)));
set(handles.ROLL,'string',num2str(T(4))); 
set(handles.PITCH,'string',num2str(T(5)));
set(handles.YAW,'string',num2str(T(6)));

% --- Executes during object creation, after setting all properties.
function d3_Slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d3_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to Theta1_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta1_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function x_A_Callback(hObject, eventdata, handles)
% hObject    handle to x_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_A as text
%        str2double(get(hObject,'String')) returns contents of x_A as a double


% --- Executes during object creation, after setting all properties.
function x_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_A_Callback(hObject, eventdata, handles)
% hObject    handle to y_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_A as text
%        str2double(get(hObject,'String')) returns contents of y_A as a double


% --- Executes during object creation, after setting all properties.
function y_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z_A_Callback(hObject, eventdata, handles)
% hObject    handle to z_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z_A as text
%        str2double(get(hObject,'String')) returns contents of z_A as a double


% --- Executes during object creation, after setting all properties.
function z_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_B_Callback(hObject, eventdata, handles)
% hObject    handle to x_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_B as text
%        str2double(get(hObject,'String')) returns contents of x_B as a double


% --- Executes during object creation, after setting all properties.
function x_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_B_Callback(hObject, eventdata, handles)
% hObject    handle to y_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_B as text
%        str2double(get(hObject,'String')) returns contents of y_B as a double


% --- Executes during object creation, after setting all properties.
function y_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z_B_Callback(hObject, eventdata, handles)
% hObject    handle to z_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z_B as text
%        str2double(get(hObject,'String')) returns contents of z_B as a double


% --- Executes during object creation, after setting all properties.
function z_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw_A_Callback(hObject, eventdata, handles)
% hObject    handle to yaw_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw_A as text
%        str2double(get(hObject,'String')) returns contents of yaw_A as a double


% --- Executes during object creation, after setting all properties.
function yaw_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw_B_Callback(hObject, eventdata, handles)
% hObject    handle to yaw_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw_B as text
%        str2double(get(hObject,'String')) returns contents of yaw_B as a double


% --- Executes during object creation, after setting all properties.
function yaw_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in goto_btn.
function goto_btn_Callback(hObject, eventdata, handles)
% hObject    handle to goto_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag_menu
a = str2num(get(handles.a,'String'));
v = str2num(get(handles.v,'String'));
x_A = str2num(get(handles.x_A,'String'));   
y_A = str2num(get(handles.y_A,'String'));   
z_A = str2num(get(handles.z_A,'String'));
yaw_A = str2num(get(handles.yaw_A,'String'));   
x_B = str2num(get(handles.x_B,'String'));   
y_B = str2num(get(handles.y_B,'String'));   
z_B = str2num(get(handles.z_B,'String'));   
yaw_B = str2num(get(handles.yaw_B,'String'));
A = [x_A y_A z_A yaw_A];
B = [x_B y_B z_B yaw_B];
AB = [x_B-x_A y_B-y_A z_B-z_A];
c_x = abs(AB(1))/sqrt(AB(1)^2+AB(2)^2+AB(3)^2);
c_y = abs(AB(2))/sqrt(AB(1)^2+AB(2)^2+AB(3)^2);
c_z = abs(AB(3))/sqrt(AB(1)^2+AB(2)^2+AB(3)^2);
x = zeros(1,100);
y = zeros(1,100);
z = zeros(1,100);
yawA = zeros(1,100);
theta1 = zeros(1,100);
theta2 = zeros(1,100);
theta4 = zeros(1,100);
d3 = zeros(1,100);
axes(handles.axes2);
hold off
axes(handles.axes3);
hold off
axes(handles.axes4);
hold off
if flag_menu
    q = sqrt(AB(1)^2+AB(2)^2+AB(3)^2);
    if v>=sqrt(q*a/2)
       v = sqrt(q*a/2);
       set(handles.v,'string',num2str(v)); 
    end
tc = 2*v/a;
tf = q/v + tc;
t=0;
t1=0;
i=1;
while(t<=tf)
if(t<=tc/2)
qx = (a*t^3/(tc*3))*c_x;
qy = (a*t^3/(tc*3))*c_y;
qz = (a*t^3/(tc*3))*c_z;
elseif(t<=tc)
qx = (a*(-t^3/(3*tc)+t^2-t*tc/2+tc^2/12))*c_x;
qy = (a*(-t^3/(3*tc)+t^2-t*tc/2+tc^2/12))*c_y;
qz = (a*(-t^3/(3*tc)+t^2-t*tc/2+tc^2/12))*c_z;
elseif(t<=tf-tc)
qx = (v*(t-tc)+a*tc^2/4)*c_x;
qy = (v*(t-tc)+a*tc^2/4)*c_y;
qz = (v*(t-tc)+a*tc^2/4)*c_z;
elseif(t<=tf-tc/2)
qx = (-a*(t-tf+tc)^3/(3*tc)+v*(t-tc)+a*tc^2/4)*c_x;
qy = (-a*(t-tf+tc)^3/(3*tc)+v*(t-tc)+a*tc^2/4)*c_y;
qz = (-a*(t-tf+tc)^3/(3*tc)+v*(t-tc)+a*tc^2/4)*c_z;
elseif(t<=tf)
qx = (a*((t-tf)^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x;
qy = (a*((t-tf)^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y;
qz = (a*((t-tf)^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z;
end
if A(1)<B(1)
   x_t = x_A + qx;
else 
   x_t = x_A - qx;
end
if A(2)<B(2)
   y_t = y_A + qy;
else 
   y_t = y_A - qy;
end
if A(3)<B(3)
   z_t = z_A + qz;
else 
   z_t = z_A - qz;
end
x(i) = x_t;
y(i) = y_t;
z(i) = z_t;
yawA(i) = A(4) + i*(B(4)-A(4))/200;
I = Scara_invest(x(i),y(i),z(i),yawA(i));
theta1(i) = I(1);
theta2(i) = I(2);
theta4(i) = I(3);
d3(i)= I(4);
i = i + 1;
t = t + tf/200;
end
t=0;
i=1;
while(t<=tf)
    pause (1);
if(t<=tc/2)
qx = (a*t^3/(tc*3))*c_x;
qy = (a*t^3/(tc*3))*c_y;
qz = (a*t^3/(tc*3))*c_z;
while(t1<=tc/2)
t1 = linspace(0,tc/2,30);
axes(handles.axes2);
plot(t1,(a*t1.^3/(tc*3))*c_x,'r','LineWidth',2);
hold on
plot(t1,((a*t1.^3/(tc*3))*c_x-(a*(t1-tc/200).^3/(tc*3))*c_x)/(tc/200),'k','LineWidth',2);
hold on
plot(t1,((a*(t1+tc/200).^3/(tc*3))*c_x+(a*(t1-tc/200).^3/(tc*3))*c_x-2*(a*t1.^3/(tc*3))*c_x)/(tc/200)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes3);
plot(t1,(a*t1.^3/(tc*3))*c_y,'r','LineWidth',2);
hold on
plot(t1,((a*t1.^3/(tc*3))*c_y-(a*(t1-tc/200).^3/(tc*3))*c_y)/(tc/200),'k','LineWidth',2);
hold on
plot(t1,((a*(t1+tc/200).^3/(tc*3))*c_y+(a*(t1-tc/200).^3/(tc*3))*c_y-2*(a*t1.^3/(tc*3))*c_y)/(tc/200)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes4);
plot(t1,(a*t1.^3/(tc*3))*c_z,'r','LineWidth',2);
hold on
plot(t1,((a*t1.^3/(tc*3))*c_z-(a*(t1-tc/200).^3/(tc*3))*c_z)/(tc/200),'k','LineWidth',2);
hold on
plot(t1,((a*(t1+tc/200).^3/(tc*3))*c_z+(a*(t1-tc/200).^3/(tc*3))*c_z-2*(a*t1.^3/(tc*3))*c_z)/(tc/200)^2,'g','LineWidth',2);
hold on
grid on
t1 = t1 + tc/200;
end
elseif(t<=tc)
qx = (a*(-t^3/(3*tc)+t^2-t*tc/2+tc^2/12))*c_x;
qy = (a*(-t^3/(3*tc)+t^2-t*tc/2+tc^2/12))*c_y;
qz = (a*(-t^3/(3*tc)+t^2-t*tc/2+tc^2/12))*c_z;
while(t1<=tc)
t1 = linspace(tc/2,tc,30);
axes(handles.axes2);
plot(t1,(a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_x,'r','LineWidth',2);
hold on
plot(t1,((a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_x-(a*(-(t1-tc/100).^3/(3*tc)+(t1-tc/100).^2-(t1-tc/100).*tc/2+tc^2/12))*c_x)/(tc/100),'k','LineWidth',2);
hold on
plot(t1,((a*(-(t1-tc/100).^3/(3*tc)+(t1-tc/100).^2-(t1-tc/100).*tc/2+tc^2/12))*c_x+(a*(-(t1+tc/100).^3/(3*tc)+(t1+tc/100).^2-(t1+tc/100).*tc/2+tc^2/12))*c_x-2*(a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_x)/(tc/100)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes3);
plot(t1,(a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_y,'r','LineWidth',2);
hold on
plot(t1,((a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_y-(a*(-(t1-tc/100).^3/(3*tc)+(t1-tc/100).^2-(t1-tc/100).*tc/2+tc^2/12))*c_y)/(tc/100),'k','LineWidth',2);
hold on
plot(t1,((a*(-(t1-tc/100).^3/(3*tc)+(t1-tc/100).^2-(t1-tc/100).*tc/2+tc^2/12))*c_y+(a*(-(t1+tc/100).^3/(3*tc)+(t1+tc/100).^2-(t1+tc/100).*tc/2+tc^2/12))*c_y-2*(a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_y)/(tc/100)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes4);
plot(t1,(a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_z,'r','LineWidth',2);
hold on
plot(t1,((a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_z-(a*(-(t1-tc/100).^3/(3*tc)+(t1-tc/100).^2-(t1-tc/100).*tc/2+tc^2/12))*c_z)/(tc/100),'k','LineWidth',2);
hold on
plot(t1,((a*(-(t1-tc/100).^3/(3*tc)+(t1-tc/100).^2-(t1-tc/100).*tc/2+tc^2/12))*c_z+(a*(-(t1+tc/100).^3/(3*tc)+(t1+tc/100).^2-(t1+tc/100).*tc/2+tc^2/12))*c_z-2*(a*(-t1.^3/(3*tc)+t1.^2-t1.*tc/2+tc^2/12))*c_z)/(tc/100)^2,'g','LineWidth',2);
hold on
grid on    
t1 = t1 + tc/100;
end
elseif(t<=tf-tc)
qx = (v*(t-tc)+a*tc^2/4)*c_x;
qy = (v*(t-tc)+a*tc^2/4)*c_y;
qz = (v*(t-tc)+a*tc^2/4)*c_z;
while(t1<=tf-tc)
t1 = linspace(tc,tf-tc,30);
axes(handles.axes2);
plot(t1,(v*(t1-tc)+a*tc^2/4)*c_x,'r','LineWidth',2);
hold on
plot(t1,((v*(t1-tc)+a*tc^2/4)*c_x-(v*((t1-(tf-tc)/100)-tc)+a*tc^2/4)*c_x)/((tf-tc)/100),'k','LineWidth',2);
hold on
plot(t1,((v*(t1-(tf-tc)/100-tc)+a*tc^2/4)*c_x+(v*(t1+(tf-tc)/100-tc)+a*tc^2/4)*c_x-2*(v*(t1-tc)+a*tc^2/4)*c_x)/((tf-tc)/100)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes3);
plot(t1,(v*(t1-tc)+a*tc^2/4)*c_y,'r','LineWidth',2);
hold on
plot(t1,((v*(t1-tc)+a*tc^2/4)*c_y-(v*((t1-(tf-tc)/100)-tc)+a*tc^2/4)*c_y)/((tf-tc)/100),'k','LineWidth',2);
hold on
plot(t1,((v*(t1-(tf-tc)/100-tc)+a*tc^2/4)*c_y+(v*(t1+(tf-tc)/100-tc)+a*tc^2/4)*c_y-2*(v*(t1-tc)+a*tc^2/4)*c_y)/((tf-tc)/100)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes4);
plot(t1,(v*(t1-tc)+a*tc^2/4)*c_z,'r','LineWidth',2);
hold on
plot(t1,((v*(t1-tc)+a*tc^2/4)*c_z-(v*((t1-(tf-tc)/100)-tc)+a*tc^2/4)*c_z)/((tf-tc)/100),'k','LineWidth',2);
hold on
plot(t1,((v*(t1-(tf-tc)/100-tc)+a*tc^2/4)*c_z+(v*(t1+(tf-tc)/100-tc)+a*tc^2/4)*c_z-2*(v*(t1-tc)+a*tc^2/4)*c_z)/((tf-tc)/100)^2,'g','LineWidth',2);
hold on
grid on
t1 = t1 + (tf-tc)/100;
end
elseif(t<=tf-tc/2)
qx = (-a*(t-tf+tc)^3/(3*tc)+v*(t-tc)+a*tc^2/4)*c_x;
qy = (-a*(t-tf+tc)^3/(3*tc)+v*(t-tc)+a*tc^2/4)*c_y;
qz = (-a*(t-tf+tc)^3/(3*tc)+v*(t-tc)+a*tc^2/4)*c_z;
while(t1<=tf-tc/2)
t1 = linspace(tf-tc,tf-tc/2,30);
axes(handles.axes2);
plot(t1,(-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_x,'r','LineWidth',2);
hold on
plot(t1,((-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_x-(-a*(t1-(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1-(tf-tc/2)/100-tc)+a*tc^2/4)*c_x)/((tf-tc/2)/100),'k','LineWidth',2);
hold on
plot(t1,((-a*(t1+(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1+(tf-tc/2)/100-tc)+a*tc^2/4)*c_x+(-a*(t1-(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1-(tf-tc/2)/100-tc)+a*tc^2/4)*c_x-2*(-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_x)/((tf-tc/2)/100)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes3);
plot(t1,(-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_y,'r','LineWidth',2);
hold on
plot(t1,((-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_y-(-a*(t1-(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1-(tf-tc/2)/100-tc)+a*tc^2/4)*c_y)/((tf-tc/2)/100),'k','LineWidth',2);
hold on
plot(t1,((-a*(t1+(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1+(tf-tc/2)/100-tc)+a*tc^2/4)*c_y+(-a*(t1-(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1-(tf-tc/2)/100-tc)+a*tc^2/4)*c_y-2*(-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_y)/((tf-tc/2)/100)^2,'g','LineWidth',2);
hold on
grid on
axes(handles.axes4);
plot(t1,(-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_z,'r','LineWidth',2);
hold on
plot(t1,((-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_z-(-a*(t1-(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1-(tf-tc/2)/100-tc)+a*tc^2/4)*c_z)/((tf-tc/2)/100),'k','LineWidth',2);
hold on
plot(t1,((-a*(t1+(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1+(tf-tc/2)/100-tc)+a*tc^2/4)*c_z+(-a*(t1-(tf-tc/2)/100-tf+tc).^3/(3*tc)+v*(t1-(tf-tc/2)/100-tc)+a*tc^2/4)*c_z-2*(-a*(t1-tf+tc).^3/(3*tc)+v*(t1-tc)+a*tc^2/4)*c_z)/((tf-tc/2)/100)^2,'g','LineWidth',2);
hold on
grid on
t1 = t1 + (tf-tc/2)/100;
end
elseif(t<=tf)
qx = (a*((t-tf)^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x;
qy = (a*((t-tf)^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y;
qz = (a*((t-tf)^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z;
while(t1<=tf)
t1 = linspace(tf-tc/2,tf,30);
axes(handles.axes2);
plot(t1,(a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x,'r','LineWidth',2);
hold on
plot(t1,((a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x-(a*((t1-tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x)/(tf/100),'k','LineWidth',2);
hold on
plot(t1,((a*((t1+tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1+tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x+(a*((t1-tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x-2*(a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_x)/(tf/100)^2,'g','LineWidth',2);
hold on
legend('qx','vx','ax');
grid on
axes(handles.axes3);
plot(t1,(a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y,'r','LineWidth',2);
hold on
plot(t1,((a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y-(a*((t1-tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y)/(tf/100),'k','LineWidth',2);
hold on
plot(t1,((a*((t1+tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1+tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y+(a*((t1-tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y-2*(a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_y)/(tf/100)^2,'g','LineWidth',2);
hold on
legend('qy','vy','ay');
grid on
axes(handles.axes4);
plot(t1,(a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z,'r','LineWidth',2);
hold on
plot(t1,((a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z-(a*((t1-tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z)/(tf/100),'k','LineWidth',2);
hold on
plot(t1,((a*((t1+tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1+tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z+(a*((t1-tf/100-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf/100-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z-2*(a*((t1-tf).^3+tc^3/8)/(3*tc)-(a*tc/2-v)*(t1-tf+tc/2)-a*tc^2/24+v*(tf-1.5*tc)+a*tc^2/4)*c_z)/(tf/100)^2,'g','LineWidth',2);
hold on
legend('qz','vz','az');
grid on
t1 = t1 + tf/100;
end
end
if A(1)<B(1)
   xA = x_A + qx;
else 
   xA = x_A - qx;
end
if A(2)<B(2)
   yA = y_A + qy;
else 
   yA = y_A - qy;
end
if A(3)<B(3)
   zA = z_A + qz;
else 
   zA = z_A - qz;
end
yaw_A = A(4) + i*(B(4)-A(4))/30;  
I = Scara_invest(xA,yA,zA,yaw_A);
T = Scara_cal(I(1),I(2),I(3),I(4));
axes(handles.axes1);
ve_robot;
t = t + tf/30;
tx(i)=T(1);
ty(i)=T(2);
tz(i)=T(3);
k = 1;
while(k<=i)
textA = text(x_A,y_A,z_A,'A');
set(textA,'color','blue');
hold on
textB = text(x_B,y_B,z_B-0.2,'B');
set(textB,'color','blue');
hold on
plot3(tx(k),ty(k),tz(k),'m.','MarkerSize',10);
hold on
k = k + 1;
end
i = i + 1;
end
j = 1;
while(j<=i*6)
plot3(x(j),y(j),z(j),'m.','MarkerSize',10);
hold on
j = j + 1;
end
end


% --- Executes on selection change in menu_path.
function menu_path_Callback(hObject, eventdata, handles)
% hObject    handle to menu_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_path contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_path
global flag_menu;
contents = cellstr(get(hObject,'String'));
choice = contents(get(hObject,'Value'));
choice
if(strcmp(choice,'Linear Interpolation'))
flag_menu = 1;
elseif(strcmp(choice,'Circular Interpolation'))
flag_menu = 0;
end

% --- Executes during object creation, after setting all properties.
function menu_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_Callback(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v as text
%        str2double(get(hObject,'String')) returns contents of v as a double


% --- Executes during object creation, after setting all properties.
function v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_Callback(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R as text
%        str2double(get(hObject,'String')) returns contents of R as a double


% --- Executes during object creation, after setting all properties.
function R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
