function varargout = Modulacao(varargin)
% MODULACAO MATLAB code for Modulacao.fig
%      MODULACAO, by itself, creates a new MODULACAO or raises the existing
%      singleton*.
%
%      H = MODULACAO returns the handle to a new MODULACAO or the handle to
%      the existing singleton*.
%
%      MODULACAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODULACAO.M with the given input arguments.
%
%      MODULACAO('Property','Value',...) creates a new MODULACAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Modulacao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Modulacao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Modulacao

% Last Modified by GUIDE v2.5 05-May-2019 13:05:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Modulacao_OpeningFcn, ...
                   'gui_OutputFcn',  @Modulacao_OutputFcn, ...
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


% --- Executes just before Modulacao is made visible.
function Modulacao_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Modulacao (see VARARGIN)

% Choose default command line output for Modulacao
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Modulacao wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Modulacao_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(~, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(~, ~, ~)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, ~, ~)
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
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


%% OBTER PARÂMETROS DOS SINAIS (MENSAGEM VS. PORTADORA)
Am=str2double(get(handles.edit1,'String'));
Ac=str2double(get(handles.edit2,'String'));
fm=str2double(get(handles.edit3,'String'));
fc=str2double(get(handles.edit4,'String'));

%% EXPRESSÕES DOS SINAIS (MENSAGEM VS. PORTADORA)
Fs = 1000;
t = [0:2*Fs]'/Fs;
m=Am*cos(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);


%% MODULAÇÃO (FEITA POR MIM VS. MATLAB)
op=get(handles.popupmenu1,'Value');



switch(op)
    
    case 1 %% AM-DSB
        
        smatlab=ammod(m,fc,Fs,0,Ac);
        
        s=(cos(2*pi*fc*t)).*((Ac+Am*cos(2*pi*fm*t))); %sinal modulado em DSB criado por mim
        
        
        axes(handles.axes1); %Mensagem
        plot(t,m,'blue');
       

        axes(handles.axes2); %AM-DSB feito por mim
        plot(t,s,'red'); 
        

        axes(handles.axes3); %Modulado pelo MATLAB
        plot(t,smatlab,'green'); 
        
        axes(handles.axes4); %Espectro de frequencias
        
        %% Método apresentado pelo help do Matlab para obter o espectro em DSB
        fouriermatlab = fftn(smatlab);
        fouriermatlab = abs(fouriermatlab(1:length(fouriermatlab)/2+1));
        frq = [0:length(fouriermatlab)-1]*Fs/length(fouriermatlab)/2;
        plot(frq,fouriermatlab,'black'); 
        
        
    case 2 %% AM-DSB-SC
        s=m.*c;
        smatlab=ammod(m,fc,Fs,0,0);
        
        
        axes(handles.axes1);
        plot(t,m,'blue');
        
        axes(handles.axes2);
        plot(t,s,'red'); 
        
        axes(handles.axes3);
        plot(t,smatlab,'green');       
        axes(handles.axes4);
        
        %% Método apresentado pelo help do Matlab para obter o espectro em DSB
        fouriermatlab = fftn(smatlab);
        fouriermatlab = abs(fouriermatlab(1:round(length(fouriermatlab)/2+1)));
        frq =[0:length(fouriermatlab)-1]*fm/length(fouriermatlab)/2;
        frq=frq*100;
        plot(frq,fouriermatlab,'black'); 
        
    case 3 %% AM-SSB
        
        escolha = questdlg('Deseja modular em USB ou LSB?', ...
	'Modulação AM-SSB', ...
	'Lower Side Band','Upper Side Band','Upper Side Band');

switch escolha
    
    case 'Lower Side Band'
        s=Ac*Am*(0.5)*(0.133331)*cos(2*pi*(fc-fm)*t);
        smatlab=ssbmod(m,fc,Fs,0);
        
    case 'Upper Side Band'
        s=Ac*Am*(0.5)*(0.133331)*cos(2*pi*(fc+fm)*t);
        smatlab=ssbmod(m,fc,Fs,0,'upper');
end


        axes(handles.axes1);
        plot(t,m,'blue');
        
        axes(handles.axes2);
        plot(t,s,'red');
        
        axes(handles.axes3);
        plot(t,smatlab,'green');
        
        axes(handles.axes4);
        
        %% Método apresentado pelo help do Matlab para obter o espectro em SSB
        fouriermatlab = fftn(smatlab);
        fouriermatlab = abs(fouriermatlab(1:round(length(fouriermatlab)/2+1)));
        frq = [0:length(fouriermatlab)-1]*fm/length(fouriermatlab)/2;
        frq=frq*100;
        plot(frq,fouriermatlab,'black');
        
    case 4 %% FM
        
        betta=str2double(get(handles.edit5,'String'));
        
        desvio=betta*fm;
        
        s=cos(2*pi*fc*t+desvio*sin(2*pi*fm*t));
        
        smatlab=fmmod(m,fc,Fs,desvio,0);
        
        
        axes(handles.axes1);
        plot(t,m,'blue');
        

        axes(handles.axes2);
        plot(t,s,'red'); 
        

        axes(handles.axes3);
        plot(t,smatlab,'green');
        

        axes(handles.axes4);
        %% Método apresentado pelo help do Matlab para obter o espectro em SSB
        fouriermatlab = fftn(smatlab);
        fouriermatlab = abs(fouriermatlab(1:round(length(fouriermatlab)/2+1)));
        frq = [0:length(fouriermatlab)-1]*fm/length(fouriermatlab)/2;
        frq=frq*1000;
        plot(frq,fouriermatlab,'black');
        

        
    case 5 %% PM
        betta=str2double(get(handles.edit5,'String'));
        
        
        s=cos(2*pi*fc*t+betta*m);
        smatlab=pmmod(m,fc,Fs,betta,0);
        
        
        axes(handles.axes1);
        plot(t,m,'blue');
        

        axes(handles.axes2);
        plot(t,s,'red');
        

        axes(handles.axes3);
        plot(t,smatlab,'green'); 

        
        axes(handles.axes4);
        %% Método apresentado pelo help do Matlab para obter o espectro em SSB
        fouriermatlab = fftn(smatlab);
        fouriermatlab = abs(fouriermatlab(1:round(length(fouriermatlab)/2+1)));
        frq = [0:length(fouriermatlab)-1]*fm/length(fouriermatlab)/2;
        frq=frq*1000;
        plot(frq,fouriermatlab,'black'); 

    case 6 %Sinal àperiódico
        

escolher = questdlg('Tem a certeza que quer trabalhar com um sinal de audio?', ...
	'Menu', ...
	'Sim','Não','Cancelar','Cancelar');

switch escolher
    case 'Sim'
        escolha = 1
    case 'Não'
        escolha = 0
    case 'Cancelar'
        escolha = 0
end
  if escolha==1
      Sinaldeaudio();
  elseif escolha==0
      disp('Cancelado');
          
  end
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


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1



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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% VARIÁVEIS GLOBAIS
global t
global m

%% DESENHAR GRÁFICO PARA ANÁLISE (MENSAGEM)
figure
plot(t,m)

title('Sinal da mensagem')
xlabel('Tempo (s)'); ylabel('Amplitude (V)');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
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
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
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
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% VARIÁVEIS GLOBAIS
global frq
global fouriermatlab

%% DESENHAR GRÁFICO PARA ANÁLISE
figure
plot(frq,fouriermatlab,'black')
title('Espectro de frequência')
xlabel('Frequência (Hz)'); ylabel('Amplitude (W)');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox(' Este programa foi desenvolvido pelo 381 CAD EN-AEL Moreira Bastos, tem como objetivo apresentar os diferentes tipos de modulação de sinais estudados em Fundamentos de Telecomunicações.','Modulação de Sinais v1.01');
waitfor(h);


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
