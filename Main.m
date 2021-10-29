function varargout = Main(varargin)
% MAIN MATLAB code for Main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main

% Last Modified by GUIDE v2.5 29-Oct-2021 21:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
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


% --- Executes just before Main is made visible.
function Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main (see VARARGIN)
%% variable
global plotdata;
plotdata = null(1,3);
global Scara;
Scara=SCARA_object(0.372,0.095,0.45,0.4);
Scara.theta1=0;
Scara.theta2=0;
Scara.d3=0;
Scara.theta4=0;
% Choose default command line output for Main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.SliderTheta1, 'SliderStep', [1 1]/25);
set(handles.SliderTheta2, 'SliderStep', [1 1]/25);
set(handles.SliderD3, 'SliderStep', [1 1]/25);
set(handles.SliderTheta4, 'SliderStep', [1 1]/25);



% --- Outputs from this function are returned to the command line.
function varargout = Main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function SliderTheta2_Callback(hObject, eventdata, handles)
% hObject    handle to SliderTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Scara.theta2 = get(handles.SliderTheta2,'value');
set(handles.DisplayTheta2,'string',num2str(Scara.theta2));
Scara.theta2 = Scara.theta2/180*pi;
plot_robot(handles);

% --- Executes during object creation, after setting all properties.
function SliderTheta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderD3_Callback(hObject, eventdata, handles)
% hObject    handle to SliderD3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Scara.d3 = get(handles.SliderD3,'value');
set(handles.DisplayD3,'string',num2str(Scara.d3));
plot_robot(handles);


% --- Executes during object creation, after setting all properties.
function SliderD3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderD3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderTheta4_Callback(hObject, eventdata, handles)
% hObject    handle to SliderTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Scara.theta4 = get(handles.SliderTheta4,'value')
set(handles.DisplayTheta4,'string',num2str(Scara.theta4));
Scara.theta4 = Scara.theta4/180*pi;
plot_robot(handles);

% --- Executes during object creation, after setting all properties.
function SliderTheta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderTheta1_Callback(hObject, eventdata, handles)
% hObject    handle to SliderTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Scara.theta1 = get(handles.SliderTheta1,'value');
set(handles.DisplayTheta1,'string',num2str(Scara.theta1));
Scara.theta1 = Scara.theta1/180*pi;
plot_robot(handles);
% ParamsRobot=[Scara.theta1,Scara.theta2,Scara.d3,Scara.theta4];


% --- Executes during object creation, after setting all properties.
function SliderTheta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DisplayTheta1_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayTheta1 as text
%        str2double(get(hObject,'String')) returns contents of DisplayTheta1 as a double


% --- Executes during object creation, after setting all properties.
function DisplayTheta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayTheta2_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayTheta2 as text
%        str2double(get(hObject,'String')) returns contents of DisplayTheta2 as a double


% --- Executes during object creation, after setting all properties.
function DisplayTheta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayD3_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayD3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayD3 as text
%        str2double(get(hObject,'String')) returns contents of DisplayD3 as a double


% --- Executes during object creation, after setting all properties.
function DisplayD3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayD3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayTheta4_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayTheta4 as text
%        str2double(get(hObject,'String')) returns contents of DisplayTheta4 as a double


% --- Executes during object creation, after setting all properties.
function DisplayTheta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayX_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayX as text
%        str2double(get(hObject,'String')) returns contents of DisplayX as a double


% --- Executes during object creation, after setting all properties.
function DisplayX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayY_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayY as text
%        str2double(get(hObject,'String')) returns contents of DisplayY as a double


% --- Executes during object creation, after setting all properties.
function DisplayY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayZ_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayZ as a double


% --- Executes during object creation, after setting all properties.
function DisplayZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayRoll_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayRoll as text
%        str2double(get(hObject,'String')) returns contents of DisplayRoll as a double


% --- Executes during object creation, after setting all properties.
function DisplayRoll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayPitch_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayPitch as text
%        str2double(get(hObject,'String')) returns contents of DisplayPitch as a double


% --- Executes during object creation, after setting all properties.
function DisplayPitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayYaw_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayYaw as a double


% --- Executes during object creation, after setting all properties.
function DisplayYaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



% --- Executes on button press in BtnPositiveX.
function BtnPositiveX_Callback(hObject, eventdata, handles)
% hObject    handle to BtnPositiveX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    ofset = 0.05; 
    x = str2num(get(handles.DisplayX,'String'));
    x  = x+ ofset;
    y = str2num(get(handles.DisplayY,'String'));
    z = str2num(get(handles.DisplayZ,'String'));
    yaw = str2num(get(handles.DisplayYaw,'String'));
    Scara=SCARA_object(0.372,0.095,0.45,0.4);
    I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
    theta1=I(1);
    theta2=I(2);
    D3=I(4);
    if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145 && -0.2 < D3 && D3 < 0.08
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
    selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
    end

catch
     warning();
selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
switch selection,
   case 'OK',
       
   otherwise,
     return
end
end


% --- Executes on button press in BtnNegativeX.
function BtnNegativeX_Callback(hObject, eventdata, handles)
% hObject    handle to BtnNegativeX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    ofset = 0.05; 
    x = str2num(get(handles.DisplayX,'String'));
    x  = x- ofset;
    y = str2num(get(handles.DisplayY,'String'));
    z = str2num(get(handles.DisplayZ,'String'));
    yaw = str2num(get(handles.DisplayYaw,'String'));
    Scara=SCARA_object(0.372,0.095,0.45,0.4);
    I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
    theta1=I(1);
    theta2=I(2);
    D3=I(4);
    if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145&& -0.2 < D3 && D3 < 0.08
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
    selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
    end
catch
     warning();
selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');

end

% --- Executes on button press in BtnPositiveY.
function BtnPositiveY_Callback(hObject, eventdata, handles)
% hObject    handle to BtnPositiveY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    ofset = 0.05; 
    x = str2num(get(handles.DisplayX,'String'));
    y = str2num(get(handles.DisplayY,'String'));
    y = y+ ofset;
    z = str2num(get(handles.DisplayZ,'String'));
    yaw = str2num(get(handles.DisplayYaw,'String'));
    Scara=SCARA_object(0.372,0.095,0.45,0.4);
    I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
    theta1=I(1);
    theta2=I(2);
    D3=I(4);
    if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145&& -0.2 < D3 && D3 < 0.08
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
    selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
    end
catch
     warning();
selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');

end



% --- Executes on button press in BtnNegativeY.
function BtnNegativeY_Callback(hObject, eventdata, handles)
try
% hObject    handle to BtnNegativeY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    ofset = 0.05; 
    x = str2num(get(handles.DisplayX,'String'));
    y = str2num(get(handles.DisplayY,'String'));
    y = y- ofset;
    z = str2num(get(handles.DisplayZ,'String'));
    yaw = str2num(get(handles.DisplayYaw,'String'));
    Scara=SCARA_object(0.372,0.095,0.45,0.4);
    I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
    theta1=I(1);
    theta2=I(2);
    D3=I(4);
    if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145&& -0.2 < D3 && D3 < 0.08
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
    selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
    end

catch
     warning();
selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');

end

% --- Executes on button press in BtnPositiveZ.
function BtnPositiveZ_Callback(hObject, eventdata, handles)
% hObject    handle to BtnPositiveZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ofset = 0.05; 
x = str2num(get(handles.DisplayX,'String'));
y = str2num(get(handles.DisplayY,'String'));
z = str2num(get(handles.DisplayZ,'String'));
z = z+ ofset;
yaw = str2num(get(handles.DisplayYaw,'String'));
Scara=SCARA_object(0.372,0.095,0.45,0.4);
I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
theta1=I(1);
theta2=I(2);
D3=I(4);
if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145&& -0.2 < D3 && D3 < 0.08
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
    selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
end


% --- Executes on button press in BtnNegativeZ.
function BtnNegativeZ_Callback(hObject, eventdata, handles)
% hObject    handle to BtnNegativeZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ofset = 0.05; 
x = str2num(get(handles.DisplayX,'String'));
y = str2num(get(handles.DisplayY,'String'));
z = str2num(get(handles.DisplayZ,'String'));
z = z- ofset;
yaw = str2num(get(handles.DisplayYaw,'String'));
Scara=SCARA_object(0.372,0.095,0.45,0.4);
I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
theta1=I(1);
theta2=I(2);
D3=I(4);
if -125 < theta1 && theta1 <125 && -145 < theta2 && theta2 <145&& -0.2 < D3 && D3 < 0.08
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
    selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
end



% --- Executes on button press in BtnPositiveYaw.
function BtnPositiveYaw_Callback(hObject, eventdata, handles)
% hObject    handle to BtnPositiveYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ofset = 10; 
x = str2num(get(handles.DisplayX,'String'));
y = str2num(get(handles.DisplayY,'String'));
z = str2num(get(handles.DisplayZ,'String'));
yaw = str2num(get(handles.DisplayYaw,'String'));
yaw = yaw+ ofset;
Scara=SCARA_object(0.372,0.095,0.45,0.4);
I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
set(handles.DisplayTheta1,'string',num2str(I(1))); 
set(handles.DisplayTheta2,'string',num2str(I(2)));
set(handles.DisplayTheta4,'string',num2str(I(3)));
set(handles.DisplayD3,'string',num2str(I(4))); 
set(handles.SliderTheta1,'value',I(1));
set(handles.SliderTheta2,'value',I(2));
set(handles.SliderTheta4,'value',I(3));
set(handles.SliderD3,'value',I(4));
plot_robot(handles);


% --- Executes on button press in BtnNegativeYaw.
function BtnNegativeYaw_Callback(hObject, eventdata, handles)
% hObject    handle to BtnNegativeYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ofset = 10; 
x = str2num(get(handles.DisplayX,'String'));
y = str2num(get(handles.DisplayY,'String'));
z = str2num(get(handles.DisplayZ,'String'));
yaw = str2num(get(handles.DisplayYaw,'String'));
yaw = yaw- ofset;
Scara=SCARA_object(0.372,0.095,0.45,0.4);
I = SCARA_object.invest_kinnematic(Scara,x,y,z,yaw);
set(handles.DisplayTheta1,'string',num2str(I(1))); 
set(handles.DisplayTheta2,'string',num2str(I(2)));
set(handles.DisplayTheta4,'string',num2str(I(3)));
set(handles.DisplayD3,'string',num2str(I(4))); 
set(handles.SliderTheta1,'value',I(1));
set(handles.SliderTheta2,'value',I(2));
set(handles.SliderTheta4,'value',I(3));
set(handles.SliderD3,'value',I(4));
plot_robot(handles);


% --- Executes on button press in BtnHome.
function BtnHome_Callback(hObject, eventdata, handles)
% hObject    handle to BtnHome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Scara=SCARA_object(0.372,0.095,0.45,0.4);
Scara.theta1=0;
Scara.theta2=90;
Scara.d3=-0.1;
Scara.theta4=0;
set(handles.DisplayTheta1,'string',num2str(Scara.theta1)); 
set(handles.DisplayTheta2,'string',num2str(Scara.theta2));
set(handles.DisplayTheta4,'string',num2str(Scara.theta4));
set(handles.DisplayD3,'string',num2str(Scara.d3)); 
set(handles.SliderTheta1,'value',Scara.theta1);
set(handles.SliderTheta2,'value',Scara.theta2);
set(handles.SliderTheta4,'value',Scara.theta4);
set(handles.SliderD3,'value',Scara.d3);
global plotdata;    
plotdata = null(1,3);
plot_robot(handles);


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BtnClear.
function BtnClear_Callback(hObject, eventdata, handles)
% hObject    handle to BtnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global plotdata;    
plotdata = null(1,3);
plot_robot(handles);


% --- Executes on button press in BtnWorkSpace.
function BtnWorkSpace_Callback(hObject, eventdata, handles)
% hObject    handle to BtnWorkSpace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PlotWorkspace(handles);
