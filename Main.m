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

% Last Modified by GUIDE v2.5 30-Nov-2021 11:36:33

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
set(handles.SliderX, 'SliderStep', [1 1]/25);
set(handles.SliderY, 'SliderStep', [1 1]/25);
set(handles.SliderZ, 'SliderStep', [1 1]/25);
set(handles.SliderYaw, 'SliderStep', [1 1]/25);



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



function DisplayCurrentX_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentX as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentX as a double


% --- Executes during object creation, after setting all properties.
function DisplayCurrentX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayCurrentY_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentY as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentY as a double


% --- Executes during object creation, after setting all properties.
function DisplayCurrentY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DisplayX_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function DisplayY_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function DisplayZ_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function DisplayYaw_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function DisplayCurrentZ_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentZ as a double


% --- Executes during object creation, after setting all properties.
function DisplayCurrentZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayCurrentRoll_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentRoll as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentRoll as a double


% --- Executes during object creation, after setting all properties.
function DisplayCurrentRoll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayCurrentPitch_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentPitch as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentPitch as a double


% --- Executes during object creation, after setting all properties.
function DisplayCurrentPitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayCurrentYaw_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentYaw as a double


% --- Executes during object creation, after setting all properties.
function DisplayCurrentYaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentYaw (see GCBO)
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
    x = str2num(get(handles.DisplayCurrentX,'String'));
    x  = x+ ofset;
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
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
    end

catch
     warning();
     selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
end


% --- Executes on button press in BtnNegativeX.
function BtnNegativeX_Callback(hObject, eventdata, handles)
% hObject    handle to BtnNegativeX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    ofset = 0.05; 
    x = str2num(get(handles.DisplayCurrentX,'String'));
    x  = x- ofset;
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
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
    x = str2num(get(handles.DisplayCurrentX,'String'));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    y = y+ ofset;
    z = str2num(get(handles.DisplayCurrentZ,'String'));
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
    x = str2num(get(handles.DisplayCurrentX,'String'));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    y = y- ofset;
    z = str2num(get(handles.DisplayCurrentZ,'String'));
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
    x = str2num(get(handles.DisplayCurrentX,'String'));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
    z = z+ ofset;
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
    end


% --- Executes on button press in BtnNegativeZ.
function BtnNegativeZ_Callback(hObject, eventdata, handles)
% hObject    handle to BtnNegativeZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    ofset = 0.05; 
    x = str2num(get(handles.DisplayCurrentX,'String'));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'))
    z = z- ofset
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
    end



% --- Executes on button press in BtnPositiveYaw.
function BtnPositiveYaw_Callback(hObject, eventdata, handles)
% hObject    handle to BtnPositiveYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    ofset = 10; 
    x = str2num(get(handles.DisplayCurrentX,'String'));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
    yaw = str2num(get(handles.DisplayCurrentYaw,'String'));
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
    x = str2num(get(handles.DisplayCurrentX,'String'));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
    yaw = str2num(get(handles.DisplayCurrentYaw,'String'));
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
    Scara.d3=0.1;
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



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function SliderX_Callback(hObject, eventdata, handles)
try
    x = get(handles.SliderX,'value');
    set(handles.DisplayCurrentX,'string',num2str(x));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
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
    end

catch
     warning();
     selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
end

% --- Executes during object creation, after setting all properties.
function SliderX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderY_Callback(hObject, eventdata, handles)
try
    y = get(handles.SliderY,'value');
    set(handles.DisplayCurrentY,'string',num2str(y));
    x = str2num(get(handles.DisplayCurrentX,'String'));
    z = str2num(get(handles.DisplayCurrentZ,'String'));
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
    end
catch
     warning();
     selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
end

% --- Executes during object creation, after setting all properties.
function SliderY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderZ_Callback(hObject, eventdata, handles)
try
    z = get(handles.SliderZ,'value');
    set(handles.DisplayCurrentZ,'string',num2str(z));
    y = str2num(get(handles.DisplayCurrentY,'String'));
    x = str2num(get(handles.DisplayCurrentX,'String'));
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
    end
catch
     warning();
     selection=questdlg('Out of workspace!',...
                     'Error!!!',...
                     'OK','Cancel','OK');
end


% --- Executes during object creation, after setting all properties.
function SliderZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderYaw_Callback(hObject, eventdata, handles)
% hObject    handle to SliderYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function SliderYaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[az ,et] = view;
set(handles.edit_AZ,'String',num2str(az) );
set(handles.edit_ET,'String',num2str(et) );



function edit_ET_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ET as text
%        str2double(get(hObject,'String')) returns contents of edit_ET as a double


% --- Executes during object creation, after setting all properties.
function edit_ET_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_AZ_Callback(hObject, eventdata, handles)
% hObject    handle to edit_AZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_AZ as text
%        str2double(get(hObject,'String')) returns contents of edit_AZ as a double


% --- Executes during object creation, after setting all properties.
function edit_AZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_AZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkboxCo0.
function checkboxCo0_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCo0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxCo0
plot_robot(handles);

% --- Executes on button press in checkboxCo1.
function checkboxCo1_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxCo1
plot_robot(handles);

% --- Executes on button press in checkboxCo2.
function checkboxCo2_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCo2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxCo2
plot_robot(handles);

% --- Executes on button press in checkboxCo3.
function checkboxCo3_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCo3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxCo3
plot_robot(handles);

% --- Executes on button press in checkboxCo4.
function checkboxCo4_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCo4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxCo4
plot_robot(handles);

% --- Executes on slider movement.
function SliderOpacity_Callback(hObject, eventdata, handles)
% hObject    handle to SliderOpacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    set(handles.SliderOpacity, 'Max', 1);
    set(handles.SliderOpacity, 'Min', 0);
    set(handles.SliderOpacity, 'SliderStep' , [1, 1] / 20 );
    SliderValueOpacity = get(handles.SliderOpacity,'Value');
    set(handles.DisplayOpacity,'String',SliderValueOpacity);
    plot_robot(handles);


% --- Executes during object creation, after setting all properties.
function SliderOpacity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderOpacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DisplayOpacity_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayOpacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayOpacity as text
%        str2double(get(hObject,'String')) returns contents of DisplayOpacity as a double


% --- Executes during object creation, after setting all properties.
function DisplayOpacity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayOpacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonGoto.
function pushbuttonGoto_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonGoto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Trajectory(handles);


function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentY as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentY as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentRoll as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentRoll as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentPitch as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentPitch as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentYaw as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextYaw_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextYaw as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextYaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentZ as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentX as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentX as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextY_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextY as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextY as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextZ_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextZ as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextX_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextX as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextX as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayAmax_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayAmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayAmax as text
%        str2double(get(hObject,'String')) returns contents of DisplayAmax as a double


% --- Executes during object creation, after setting all properties.
function DisplayAmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayAmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayVmax_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayVmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayVmax as text
%        str2double(get(hObject,'String')) returns contents of DisplayVmax as a double


% --- Executes during object creation, after setting all properties.
function DisplayVmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayVmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobuttonLinear.
function radiobuttonLinear_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonLinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonLinear
set(handles.radiobuttonCircular,'value',0);
set(handles.TextNextNext ,'visible','off');
set(handles.DisplayNextNextX ,'visible','off');
set(handles.DisplayNextNextY ,'visible','off');
set(handles.DisplayNextNextZ ,'visible','off');
set(handles.DisplayNextNextRoll ,'visible','off');
set(handles.DisplayNextNextPitch ,'visible','off');
set(handles.DisplayNextNextYaw ,'visible','off');

% --- Executes on button press in radiobuttonCircular.
function radiobuttonCircular_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonCircular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonCircular
set(handles.radiobuttonLinear,'value',0);
set(handles.TextNextNext ,'visible','on');
set(handles.DisplayNextNextX ,'visible','on');
set(handles.DisplayNextNextY ,'visible','on');
set(handles.DisplayNextNextZ ,'visible','on');
set(handles.DisplayNextNextRoll ,'visible','on');
set(handles.DisplayNextNextPitch ,'visible','on');
set(handles.DisplayNextNextYaw ,'visible','on');



% --- Executes on button press in pushbuttonTrajectoryTab1.
function pushbuttonTrajectoryTab1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonTrajectoryTab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanelTrajectoryTab1 ,'visible','on','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.uipanelTrajectoryTab2 ,'visible','off','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.uipanelTrajectoryTab3 ,'visible','off','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.pushbuttonTrajectoryTab1,'BackgroundColor','green','fontweight','normal','fontsize',10);
set(handles.pushbuttonTrajectoryTab2,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.pushbuttonTrajectoryTab3,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);

% --- Executes on button press in pushbuttonTrajectoryTab2.
function pushbuttonTrajectoryTab2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonTrajectoryTab2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanelTrajectoryTab1 ,'visible','off','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.uipanelTrajectoryTab2 ,'visible','on','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.uipanelTrajectoryTab3 ,'visible','off','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.pushbuttonTrajectoryTab1,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.pushbuttonTrajectoryTab2,'BackgroundColor','green','fontweight','normal','fontsize',10);
set(handles.pushbuttonTrajectoryTab3,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);

% --- Executes on button press in pushbuttonTrajectoryTab3.
function pushbuttonTrajectoryTab3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonTrajectoryTab3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanelTrajectoryTab1 ,'visible','off','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.uipanelTrajectoryTab2 ,'visible','off','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.uipanelTrajectoryTab3 ,'visible','on','position',[133.7142 17.5294 121.4285 33.4705]);
set(handles.pushbuttonTrajectoryTab1,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.pushbuttonTrajectoryTab2,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.pushbuttonTrajectoryTab3,'BackgroundColor','green','fontweight','normal','fontsize',10);


% --- Executes on slider movement.
function slider21_Callback(hObject, eventdata, handles)
% hObject    handle to slider21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentY as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentY as a double


% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit41_Callback(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit41 as text
%        str2double(get(hObject,'String')) returns contents of edit41 as a double


% --- Executes during object creation, after setting all properties.
function edit41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit42_Callback(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit42 as text
%        str2double(get(hObject,'String')) returns contents of edit42 as a double


% --- Executes during object creation, after setting all properties.
function edit42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit43_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentYaw as a double


% --- Executes during object creation, after setting all properties.
function edit43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit44_Callback(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit44 as text
%        str2double(get(hObject,'String')) returns contents of edit44 as a double


% --- Executes during object creation, after setting all properties.
function edit44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit45_Callback(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit45 as text
%        str2double(get(hObject,'String')) returns contents of edit45 as a double


% --- Executes during object creation, after setting all properties.
function edit45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit46_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextYaw as a double


% --- Executes during object creation, after setting all properties.
function edit46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentZ as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit48_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayCurrentX as text
%        str2double(get(hObject,'String')) returns contents of DisplayCurrentX as a double


% --- Executes during object creation, after setting all properties.
function edit48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayCurrentX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit49_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextY as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextY as a double


% --- Executes during object creation, after setting all properties.
function edit49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit50_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextZ as a double


% --- Executes during object creation, after setting all properties.
function edit50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit51_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextX as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextX as a double


% --- Executes during object creation, after setting all properties.
function edit51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit52_Callback(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit52 as text
%        str2double(get(hObject,'String')) returns contents of edit52 as a double


% --- Executes during object creation, after setting all properties.
function edit52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit53_Callback(hObject, eventdata, handles)
% hObject    handle to edit53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit53 as text
%        str2double(get(hObject,'String')) returns contents of edit53 as a double


% --- Executes during object creation, after setting all properties.
function edit53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit54_Callback(hObject, eventdata, handles)
% hObject    handle to edit54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit54 as text
%        str2double(get(hObject,'String')) returns contents of edit54 as a double


% --- Executes during object creation, after setting all properties.
function edit54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit55_Callback(hObject, eventdata, handles)
% hObject    handle to edit55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit55 as text
%        str2double(get(hObject,'String')) returns contents of edit55 as a double


% --- Executes during object creation, after setting all properties.
function edit55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit56_Callback(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit56 as text
%        str2double(get(hObject,'String')) returns contents of edit56 as a double


% --- Executes during object creation, after setting all properties.
function edit56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit57_Callback(hObject, eventdata, handles)
% hObject    handle to edit57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit57 as text
%        str2double(get(hObject,'String')) returns contents of edit57 as a double


% --- Executes during object creation, after setting all properties.
function edit57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit58_Callback(hObject, eventdata, handles)
% hObject    handle to edit58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit58 as text
%        str2double(get(hObject,'String')) returns contents of edit58 as a double


% --- Executes during object creation, after setting all properties.
function edit58_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit59_Callback(hObject, eventdata, handles)
% hObject    handle to edit59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit59 as text
%        str2double(get(hObject,'String')) returns contents of edit59 as a double


% --- Executes during object creation, after setting all properties.
function edit59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit60_Callback(hObject, eventdata, handles)
% hObject    handle to edit60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit60 as text
%        str2double(get(hObject,'String')) returns contents of edit60 as a double


% --- Executes during object creation, after setting all properties.
function edit60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit61_Callback(hObject, eventdata, handles)
% hObject    handle to edit61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit61 as text
%        str2double(get(hObject,'String')) returns contents of edit61 as a double


% --- Executes during object creation, after setting all properties.
function edit61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit62_Callback(hObject, eventdata, handles)
% hObject    handle to edit62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit62 as text
%        str2double(get(hObject,'String')) returns contents of edit62 as a double


% --- Executes during object creation, after setting all properties.
function edit62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextNextRoll_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextNextRoll as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextNextRoll as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextNextRoll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextRoll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextNextPitch_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextNextPitch as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextNextPitch as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextNextPitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextPitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextNextYaw_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextNextYaw as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextNextYaw as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextNextYaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextNextZ_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextNextZ as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextNextZ as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextNextZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextNextX_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextNextX as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextNextX as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextNextX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DisplayNextNextY_Callback(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DisplayNextNextY as text
%        str2double(get(hObject,'String')) returns contents of DisplayNextNextY as a double


% --- Executes during object creation, after setting all properties.
function DisplayNextNextY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DisplayNextNextY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
