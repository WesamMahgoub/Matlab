function varargout = happy_or_sad(varargin)
% HAPPY_OR_SAD MATLAB code for happy_or_sad.fig
%      HAPPY_OR_SAD, by itself, creates a new HAPPY_OR_SAD or raises the existing
%      singleton*.
%
%      H = HAPPY_OR_SAD returns the handle to a new HAPPY_OR_SAD or the handle to
%      the existing singleton*.
%
%      HAPPY_OR_SAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HAPPY_OR_SAD.M with the given input arguments.
%
%      HAPPY_OR_SAD('Property','Value',...) creates a new HAPPY_OR_SAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before happy_or_sad_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to happy_or_sad_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help happy_or_sad

% Last Modified by GUIDE v2.5 12-Feb-2022 22:14:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @happy_or_sad_OpeningFcn, ...
                   'gui_OutputFcn',  @happy_or_sad_OutputFcn, ...
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


% --- Executes just before happy_or_sad is made visible.
function happy_or_sad_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to happy_or_sad (see VARARGIN)

% Choose default command line output for happy_or_sad
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global in;
in = 0;
global im;
global im1;

im = imread('smile.jpg');
im1 = imread('sad.jpg');
% UIWAIT makes happy_or_sad wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = happy_or_sad_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
global in;
global im1;

in = str2double(get(handles.value, 'String'));
fprintf('%d',in);
if in >= 60
   axes(handles.picture);
   imshow(im);
else
    axes(handles.picture);
    imshow(im1);
end


function value_Callback(hObject, eventdata, handles)
% hObject    handle to value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of value as text
%        str2double(get(hObject,'String')) returns contents of value as a double


% --- Executes during object creation, after setting all properties.
function value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
