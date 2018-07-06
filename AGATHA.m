function varargout = AGATHA(varargin)
% AGATHA MATLAB code for AGATHA.fig
%      AGATHA, by itself, creates a new AGATHA or raises the existing
%      singleton*.
%
%      H = AGATHA returns the handle to a new AGATHA or the handle to
%      the existing singleton*.
%
%      AGATHA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AGATHA.M with the given input arguments.
%
%      AGATHA('Property','Value',...) creates a new AGATHA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AGATHA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AGATHA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AGATHA

% Last Modified by GUIDE v2.5 02-Jul-2018 22:06:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AGATHA_OpeningFcn, ...
                   'gui_OutputFcn',  @AGATHA_OutputFcn, ...
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

%2017  Fatemehsadat Jamalidinan  created
% --- Executes just before AGATHA is made visible.
function AGATHA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AGATHA (see VARARGIN)
imshow('bg_header.png')
% Choose default command line output for AGATHA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AGATHA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AGATHA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in PH.
function PH_Callback(hObject, eventdata, handles)
% hObject    handle to PH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(genpath('PH'));
GUI_PLOTTING_HISTOGRAM 

% --- Executes on button press in twocolor.
function twocolor_Callback(hObject, eventdata, handles)
% hObject    handle to twocolor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(genpath('Plottwo'));
Two_Color_Plot

% --- Executes on button press in CPSt.
function CPSt_Callback(hObject, eventdata, handles)
% hObject    handle to CPSt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(genpath('CPS1'));
CPS

% --- Executes on button press in Sequential_Ar.
function Sequential_Ar_Callback(hObject, eventdata, handles)
% hObject    handle to Sequential_Ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(genpath('Sequentialarrival'));
Sequential_Arrival

% --- Executes on button press in Simultaneous_Ar.
function Simultaneous_Ar_Callback(hObject, eventdata, handles)
% hObject    handle to Simultaneous_Ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(genpath('Simultaneousarrival'));
Simultaneous_Arrival

% --- Executes on button press in Short_Count.
function Short_Count_Callback(hObject, eventdata, handles)
% hObject    handle to Short_Count (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(genpath('Shortcounter'));
Short_Counter


% --- Executes on button press in usermanual.
function usermanual_Callback(hObject, eventdata, handles)
% hObject    handle to usermanual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    winopen('AGATHA.pdf');
catch
    system('open AGATHA.pdf');
end
