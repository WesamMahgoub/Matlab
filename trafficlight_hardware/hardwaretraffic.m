function varargout = hardwaretraffic(varargin)
% HARDWARETRAFFIC MATLAB code for hardwaretraffic.fig
%      HARDWARETRAFFIC, by itself, creates a new HARDWARETRAFFIC or raises the existing
%      singleton*.
%
%      H = HARDWARETRAFFIC returns the handle to a new HARDWARETRAFFIC or the handle to
%      the existing singleton*.
%
%      HARDWARETRAFFIC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HARDWARETRAFFIC.M with the given input arguments.
%
%      HARDWARETRAFFIC('Property','Value',...) creates a new HARDWARETRAFFIC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hardwaretraffic_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hardwaretraffic_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hardwaretraffic

% Last Modified by GUIDE v2.5 03-Feb-2022 17:25:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hardwaretraffic_OpeningFcn, ...
                   'gui_OutputFcn',  @hardwaretraffic_OutputFcn, ...
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


% --- Executes just before hardwaretraffic is made visible.
function hardwaretraffic_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hardwaretraffic (see VARARGIN)
set(handles.mainpanel,'Visible','on');
set(handles.oppanel,'Visible','off');
set(handles.autopanel,'Visible','off');
set(handles.manualpanel,'Visible','off');
global gocount;
global stopcount;

delete(instrfind({'Port'},{'COM4'}));
global Arduino;
Arduino = arduino('COM4','UNO');
global red;
global green;
global yellow;
global flag;
global image;

image = imread('stop.jpg');
red = 'D13';
green = 'D12';
yellow = 'D11';
flag = 0;
configurePin(Arduino,'D13','DigitalOutput');
configurePin(Arduino,'D12','DigitalOutput');
configurePin(Arduino,'D11','DigitalOutput');
% Choose default command line output for hardwaretraffic
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hardwaretraffic wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = hardwaretraffic_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in auto.
function auto_Callback(hObject, eventdata, handles)
% hObject    handle to auto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mainpanel,'Visible','off');
set(handles.oppanel,'Visible','off');
set(handles.manualpanel,'Visible','off');
set(handles.autopanel,'Visible','on');


% --- Executes on button press in manual.
function manual_Callback(hObject, eventdata, handles)
% hObject    handle to manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mainpanel,'Visible','off');
set(handles.oppanel,'Visible','off');
set(handles.autopanel,'Visible','off');
set(handles.manualpanel,'Visible','on');


% --- Executes on button press in deploy.
function deploy_Callback(hObject, eventdata, handles)
% hObject    handle to deploy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mainpanel,'Visible','off');
set(handles.oppanel,'Visible','on');
set(handles.autopanel,'Visible','off');
set(handles.manualpanel,'Visible','off');
global gocount;
gocount = get(handles.gocounter,'string');
gocount = str2num(gocount);
global stopcount;
stopcount = get(handles.stopcounter,'string');
stopcount = str2num(stopcount);
global gocount;
global stopcount;
global red;
global green;
global yellow;
global Arduino;
global flag;
global image;
flag = 1;

writeDigitalPin(Arduino,red,0); %red
writeDigitalPin(Arduino,yellow,0); %yellow
writeDigitalPin(Arduino,green,0); %green
while(flag)
    i = gocount;
    j = stopcount;
    writeDigitalPin(Arduino,green,1); %green
    set(handles.stoppicture,'visible','off');
    set(handles.car,'string','GO');
    while(i)
        i = i - 1;
        set(handles.carcounter,'string',i);
        pause(1);
    end
    writeDigitalPin(Arduino,yellow,1); %yellow
    writeDigitalPin(Arduino,green,0); %green
    set(handles.stoppicture,'visible','off')
    pause(3);
    writeDigitalPin(Arduino,yellow,0); %yellow
    writeDigitalPin(Arduino,red,1); %green
    axes(handles.stoppicture);
    set(handles.car,'string','STOP');
    imshow(image);
    while(j)
        j = j - 1;
        set(handles.carcounter,'string',j);
        pause(1); 
    end
    writeDigitalPin(Arduino,red,0); %yellow
    set(handles.stoppicture,'visible','off');
end

% --- Executes during object creation, after setting all properties.
function carcounter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to carcounter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in manualgo.
function manualgo_Callback(hObject, eventdata, handles)
% hObject    handle to manualgo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global red;
global green;
global yellow;
global Arduino;
global flag;
flag = 0;
set(handles.stoppicture,'visible','off');
writeDigitalPin(Arduino,red,0); %red
writeDigitalPin(Arduino,yellow,0); %yellow
writeDigitalPin(Arduino,green,1); %green


% --- Executes on button press in manualstop.
function manualstop_Callback(hObject, eventdata, handles)
% hObject    handle to manualstop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global red;
global green;
global yellow;
global Arduino;
global flag;
global image;

flag = 0;
writeDigitalPin(Arduino,red,1); %red
writeDigitalPin(Arduino,yellow,0); %yellow
writeDigitalPin(Arduino,green,0); %green
axes(handles.picture);
imshow(image);


% --- Executes on button press in manualready.
function manualready_Callback(hObject, eventdata, handles)
% hObject    handle to manualready (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global red;
global green;
global yellow;
global Arduino;
global flag;
flag = 0;
set(handles.stoppicture,'visible','off');
writeDigitalPin(Arduino,red,0); %red
writeDigitalPin(Arduino,yellow,1); %yellow
writeDigitalPin(Arduino,green,0); %green

% --- Executes on button press in manualmain.
function manualmain_Callback(hObject, eventdata, handles)
% hObject    handle to manualmain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag;
flag = 0;
set(handles.mainpanel,'Visible','on');
set(handles.oppanel,'Visible','off');
set(handles.autopanel,'Visible','off');
set(handles.manualpanel,'Visible','off');


function gocounter_Callback(hObject, eventdata, handles)
% hObject    handle to gocounter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gocounter as text
%        str2double(get(hObject,'String')) returns contents of gocounter as a double



% --- Executes during object creation, after setting all properties.
function stopcounter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stopcounter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.mainpanel,'Visible','off');
set(handles.oppanel,'Visible','off');
set(handles.autopanel,'Visible','on');
set(handles.manualpanel,'Visible','off');


% --- Executes on button press in main.
function main_Callback(hObject, eventdata, handles)
% hObject    handle to main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.mainpanel,'Visible','on');
set(handles.oppanel,'Visible','off');
set(handles.autopanel,'Visible','off');
set(handles.manualpanel,'Visible','off');
global flag;
flag = 0;
