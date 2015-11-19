function varargout = demonstration(varargin)
% DEMONSTRATION MATLAB code for demonstration.fig
%      DEMONSTRATION, by itself, creates a new DEMONSTRATION or raises the existing
%      singleton*.
%
%      H = DEMONSTRATION returns the handle to a new DEMONSTRATION or the handle to
%      the existing singleton*.
%
%      DEMONSTRATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMONSTRATION.M with the given input arguments.
%
%      DEMONSTRATION('Property','Value',...) creates a new DEMONSTRATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before demonstration_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to demonstration_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help demonstration

% Last Modified by GUIDE v2.5 01-Jun-2015 09:38:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demonstration_OpeningFcn, ...
                   'gui_OutputFcn',  @demonstration_OutputFcn, ...
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


% --- Executes just before demonstration is made visible.
function demonstration_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demonstration (see VARARGIN)

% Choose default command line output for demonstration
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demonstration wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demonstration_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in button_maj.
function button_maj_Callback(hObject, eventdata, handles)
% hObject    handle to button_maj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on button_maj and none of its controls.
function button_maj_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to button_maj (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
%axes(handles.axes1);
%plot(sin(1:0.01:25.99));
%handles.axes1=
axes(handles.axes1);
handles.axes1=naissance_des_points([0,1,2,3;0,2,2,1;0,0,0,0],0.5)
%fh=getframe;
%imgshow(fh);
