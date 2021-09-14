function varargout = Sinaldeaudio(varargin)
% SINALDEAUDIO MATLAB code for Sinaldeaudio.fig
%      SINALDEAUDIO, by itself, creates a new SINALDEAUDIO or raises the existing
%      singleton*.
%
%      H = SINALDEAUDIO returns the handle to a new SINALDEAUDIO or the handle to
%      the existing singleton*.
%
%      SINALDEAUDIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SINALDEAUDIO.M with the given input arguments.
%
%      SINALDEAUDIO('Property','Value',...) creates a new SINALDEAUDIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sinaldeaudio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sinaldeaudio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sinaldeaudio

% Last Modified by GUIDE v2.5 06-May-2019 15:39:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sinaldeaudio_OpeningFcn, ...
                   'gui_OutputFcn',  @Sinaldeaudio_OutputFcn, ...
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


% --- Executes just before Sinaldeaudio is made visible.
function Sinaldeaudio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sinaldeaudio (see VARARGIN)

% Choose default command line output for Sinaldeaudio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sinaldeaudio wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global Fs
global m

[m,Fs] = audioread('do you feel the same.wav');

Am=round(mean(abs(m)/2),4);


set(handles.edit1,'String',Am);
set(handles.edit3,'String',Fs);

% --- Outputs from this function are returned to the command line.
function varargout = Sinaldeaudio_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% VARIÁVEIS GLOBAIS
global t
global s
global m
global c
global fm
global Am
global Ac
global fc
global betta
global smatlab
global Fs
global frq
global fouriermatlab
global op 
global power

%% OBTER PARÂMETROS DOS SINAIS (MENSAGEM VS. PORTADORA)
Ac=str2double(get(handles.edit2,'String'));
fc=str2double(get(handles.edit4,'String'));

%% LEITURA DO FICHEIRO WAV E DEFINIÇÃO DE PARÂMETROS

%     [m,Fs] = audioread('do you feel the same.wav'); 

    c=Ac*cos(2*pi*fc*t);

    m = m(:,1);
    
    dt = 1/Fs;
    
    t = 0:dt:(length(m)*dt)-dt;
   
%% MODULAÇÃO (FEITA POR MIM VS. MATLAB)
op=get(handles.popupmenu1,'Value');



switch(op)
    
    case 1 %% AM-DSB
        
        smatlab=ammod(m,fc,Fs,0,Ac);
        
        s=(cos(2*pi*fc*t)).*((Ac+m')); %sinal modulado em DSB criado por mim
        
        
        axes(handles.axes2); %Mensagem
        plot(t,m,'blue');

        axes(handles.axes3); %AM-DSB feito por mim
        plot(t,s,'red');

        axes(handles.axes4); %Modulado pelo MATLAB
        plot(t,smatlab,'green');
        
        axes(handles.axes5); %Espectro de frequencias
        
        %% Método apresentado pelo help do Matlab para obter o espectro em DSB
        
y=fft(smatlab);
n = length(smatlab);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
pot = abs(y).^2/n;    % power of the DFT
plot(f,pot)

        
    case 2 %% AM-DSB-SC
        s=m'.*c;
        smatlab=ammod(m,fc,Fs,0,0);
        
        axes(handles.axes2);
        plot(t,m,'blue');
        
        axes(handles.axes3);
        plot(t,s,'red');
        
        axes(handles.axes4);
        plot(t,smatlab,'green');       
        
        axes(handles.axes5);
        
        %% Método apresentado pelo help do Matlab para obter o espectro em DSB
        y=fft(smatlab);
n = length(smatlab);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
pot = abs(y).^2/n;    % power of the DFT
plot(f,pot)
        
    case 3 %% AM-SSB
    
    escolha = questdlg('Deseja modular em USB ou LSB?', ...
	'Modulação AM-SSB', ...
	'Lower Side Band','Upper Side Band','Upper Side Band');

switch escolha
    
    case 'Lower Side Band'
        smatlab= ssbmod(m,fc,Fs,0);
        
    case 'Upper Side Band'
        smatlab= ssbmod(m,fc,Fs,0,'upper');
end

        
        axes(handles.axes2);
        plot(t,m,'blue');
        
        axes(handles.axes3);
        plot(t,smatlab,'red');
        
        axes(handles.axes4);
        plot(t,smatlab,'green');
        
        axes(handles.axes5);
        
        %% Método apresentado pelo help do Matlab para obter o espectro em SSB
       y=fft(smatlab);
n = length(smatlab);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
pot = abs(y).^2/n;    % power of the DFT
plot(f,pot)
        
    case 4 %% FM
        betta=str2double(get(handles.edit5,'String'));
        
        desvio=betta*fm;
        
        s=Ac*cos(2*pi*fc*t+desvio*sin(2*pi*fm*t));
        smatlab=Ac.*fmmod(m,fc,Fs,desvio);
        
        
        axes(handles.axes2);
        plot(t,m,'blue');
        
        axes(handles.axes3);
        plot(t,smatlab,'red');
        
        axes(handles.axes4);
        plot(t,smatlab,'green');
        
        axes(handles.axes5);
        %% Método apresentado pelo help do Matlab para obter o espectro em SSB
        y=fft(smatlab);
n = length(smatlab);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
pot = abs(y).^2/n;    % power of the DFT
plot(f,pot)
        
        
    case 5 %% PM
        betta=str2double(get(handles.edit5,'String'));
        
        s=cos(2*pi*fc*t+betta*m');
        
        smatlab=pmmod(m,fc,Fs,betta);
        
        
        axes(handles.axes2);
        plot(t,m,'blue');
        
        axes(handles.axes3);
        plot(t,smatlab,'red');
        
        axes(handles.axes4);
        plot(t,smatlab,'green');
        
        axes(handles.axes5);
        %% Método apresentado pelo help do Matlab para obter o espectro em SSB
        y=fft(smatlab);
n = length(smatlab);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
pot = abs(y).^2/n;    % power of the DFT
plot(f,pot)
        
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% VARIÁVEIS GLOBAIS
global t
global m

%% DESENHAR GRÁFICO PARA ANÁLISE (MENSAGEM)
figure
plot(t,m)

title('Sinal de áudio')
xlabel('Tempo (s)'); ylabel('Amplitude (V)');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% VARIÁVEIS GLOBAIS
global t
global s

%% DESENHAR GRÁFICO PARA ANÁLISE (MODULAÇÃO FEITA POR MIM)
figure
plot(t,s,'red')

title('Sinal modulado pela definição')
xlabel('Tempo (s)'); ylabel('Amplitude (V)');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% VARIÁVEIS GLOBAIS
global t
global smatlab
%% DESENHAR GRÁFICO PARA ANÁLISE (MODULAÇÃO MATLAB)

figure
plot(t,smatlab,'green')

title('Sinal modulado pelo MATLAB')
xlabel('Tempo (s)'); ylabel('Amplitude (V)');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global smatlab
global Fs

%% DESENHAR GRÁFICO PARA ANÁLISE
y=fft(smatlab);
n = length(smatlab);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
pot = abs(y).^2/n;    % power of the DFT


figure();
plot(f,pot)
xlabel('Frequencia (Hz)')
ylabel('Potência (W)')
title('Espectro de frequência do sinal')

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox(' Este programa foi desenvolvido pelo 381 CAD EN-AEL Moreira Bastos, tem como objetivo apresentar os diferentes tipos de modulação de sinais estudados em Fundamentos de Telecomunicações.','Modulação de Sinais v1.01');
waitfor(h);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m
global Fs
sound(m,Fs);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m
global fm
global Fs



y=fft(m);
n = length(m);          % number of samples
y = abs(y(1:length(y)/2+1));
f = [0:length(y)-1]*Fs/length(y)/2;
power = abs(y).^2/n;


figure();
plot(f,power)
xlabel('Frequencia (Hz)')
ylabel('Potência (W)')
title('Espectro de frequência do sinal')


       
