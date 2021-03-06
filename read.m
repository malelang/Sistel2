function varargout = read(varargin)
% INTERFAZ MATLAB code for Interfaz.fig
%      INTERFAZ, by itself, creates a new INTERFAZ or raises the existing
%      singleton*.
%
%      H = INTERFAZ returns the handle to a new INTERFAZ or the handle to
%      the existing singleton*.
%
%      INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ.M with the given input arguments.
%
%      INTERFAZ('Property','Value',...) creates a new INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Interfaz

% Last Modified by GUIDE v2.5 11-May-2018 08:40:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @read_OpeningFcn, ...
                   'gui_OutputFcn',  @read_OutputFcn, ...
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


% --- Executes just before Interfaz is made visible.
function read_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1)
movegui('center');
axis off;
fondo = imread('Gato_Psi.jpg');
image(fondo);
axis off;
% Update handles structure
set(handles.axes12,'visible', 'off');
set(handles.axes13,'visible', 'off');
set(handles.axes14,'visible', 'off');


% UIWAIT makes read wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = read_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

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
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton0.
function pushbutton0_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.

% --- Executes on button press in pushbutton25.

function EnviarTextoInicial_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function EnviarTextoInicial_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit24_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
global Mensaje Numero_Usuario bit3Sx;
%%SELECCION DE TIPO DE DATO PARA TRANSMITIR.
CheckButtonTexto = get(handles.EnviarTexto,'Value');
CheckButtonAudio = get(handles.EnviarAudio,'Value');
%SE MUESTRA ELECCI�N DE USUARIO
a = get( handles.listbox4,'Value'); %N�mero de identificaci�n de usuario.
if(a==1)
    set(handles.NumUsuario,'String','1');
    Numero_Usuario=[0 1];
elseif(a==2)
    set(handles.NumUsuario,'String','2');
    Numero_Usuario=[1 0];
elseif(a==3)
    set(handles.NumUsuario,'String','3');
    Numero_Usuario=[1 1];
end
Numero_Auxiliar=rand(1);
if(Numero_Auxiliar<=0.3)
    Bit_Canal=0;
else
    Bit_Canal=1;
end
% Gr�fica que muestra la zona de cobertura y los usuarios.
% El usuario cuatro (Que realiza las llamadas se considera que est� en el
% origen) y se calcula la distancia euclidiana desde los usuarios al 
% usuario delorigen 
t=linspace(0,2*pi); %c�rculo
x=1000*cos(t);  
y=1000*sin(t);
x1=500*cos(t);  
y1=500*sin(t);
xu=-750+1500*rand(1,3);  
yu=-750+1500*rand(1,3);
for j = 1:length(xu)
   d(j)= sqrt((xu(j).^2)+(yu(j).^2));
end
axes(handles.Axes100)
%plot(x,y,'k');
fill(x,y,[0.078, 1, 0.647]);
hold on;
fill(x1,y1,[0.172, 0.529, 0.501]);
whitebg('black');
plot(xu(1),yu(1),'y*');
plot(xu(2),yu(2),'b*');
plot(xu(3),yu(3),'m*');
plot(0,0,'R*');
legend('Entorno Rural','Entorno Urbano','Usuario 1','Usuario 2','Usuario 3','Usuario 4');
hold off;
grid on;        
if(Bit_Canal==0)
    cla(handles.axes12,'reset');
    cla(handles.axes13,'reset');
    cla(handles.axes14,'reset');
    set(handles.axes12,'visible', 'off');
    set(handles.axes13,'visible', 'off');
    set(handles.axes14,'visible', 'off');
    set(handles.TextoCliente1,'string','');
    set(handles.TextoCliente2,'string','');
    set(handles.TextoCliente3,'string','');
    warndlg('Canal ocupado, intente m�s tarde','CANAL OCUPADO');
else
    %%
    %%%%%%%%%%%%%%%%%%%%%%%%%%TRANSMISOR%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if(CheckButtonAudio == 1)
                    newaudio=muestreo();
                    %CUANTIFICACI�N
                    [quantvalue, cuant, signvector]=cuantificacion(newaudio);
                    %CODIFICACI�N LINEAL
                    X=probabilidad(quantvalue,cuant,signvector);
                    %CODIFICACION DE CANAL CON HAMMING
                    Y=codlinea(X); %Codificicaci�n de Canal
                    bit3Sx=0; %Tercer bit de se�alizaci�n
    end
    if (CheckButtonTexto == 1)
                texto=get(handles.EnviarTextoInicial,'string');
                Y=TextoaBits(texto); %Paso de texto a bits
                bit3Sx=1; %Tercer bit de se�alizaci�n
    end
    Vector_S=[Numero_Usuario bit3Sx]; %Vector de se�alizaci�n primer y segundo bit para identificar usuario
                                      %Tercer bit para identifcar el esquema de modulaci�n y el tipo de informaci�n;
    Ytx=Y;%[Vector_S Y]; %Concatena el vector de se�alizaci�n con el vector de informaci�n.
    if(bit3Sx==0)
        M=4;  %Definimos el esquema de modulaci�n para Audio (QPSK);
    else
        M=2;  %Definimos el esquema de modulaci�n para Texto (BPSK);
    end
    [X_tx, t]=MPSK1(M,Ytx,bit3Sx); %Se�al modulada para transmitir.
    
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%CANAL DE TRANSMISI�N %%%%%%%%%%%%%%%%%%%%%%%%
% Definimos el tipo de entorno a partir de la distancia
Tipo=[];
for i=1:length(d)
    if(d(i)>500)
        Tipo=[Tipo 2]; % 2 para entornos rurales
    else
        Tipo=[Tipo 1]; % 1 para entornos urbanos
    end
end
% Calculamos las perdidas para cada uno de los usuarios
d=d/1000; %Paso a Km
Ls=[]; %Vector que guarda las perdidas para cada usuario
for j=1:length(Tipo)
    if(Tipo==2)
        distancia_rural=d(j)-0.5;
        Ls1=Perdidas(2,distancia_rural)+Perdidas(1,d(j));
        Ls=[Ls Ls1];
    else
        Ls1=Perdidas(1,d(j));
        Ls=[Ls Ls1];
    end
end
% Ruido en el canal 
if(isequal(Numero_Usuario,[0 1]))
    [Sx_R1,P_rx, SNR]=Canal(X_tx,Vector_S(3),0.25,Ls(1),30,30,0.5,M);
elseif (isequal(Numero_Usuario,[1 0]))
    [Sx_R1,P_rx, SNR]=Canal(X_tx,Vector_S(3),0.25,Ls(2),30,30,0.5,M);
elseif(isequal(Numero_Usuario,[1 1]))
    [Sx_R1,P_rx, SNR]=Canal(X_tx,Vector_S(3),0.25,Ls(3),30,30,0.5,M);
end
%Interferencia en el canal
P_rxi=rand(1)*P_rx;
[Sx_R2, CI]=Interferencia(Sx_R1,Sx_R1,P_rx,P_rxi,t);


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% RECEPTOR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Comparamos las medidas para determinar si 
if(SNR<50 || CI<7)
    warndlg('No se pudo establecer la llamada','LLAMADA FALLIDA');
    cla(handles.axes12,'reset');
    cla(handles.axes13,'reset');
    cla(handles.axes14,'reset');
    set(handles.axes12,'visible', 'off');
    set(handles.axes13,'visible', 'off');
    set(handles.axes14,'visible', 'off');
    set(handles.TextoCliente1,'string', ' ');
    set(handles.TextoCliente2,'string', ' ');
    set(handles.TextoCliente3,'string', ' ');
    
else
    %Alertamos al usuario que lleg� un mensaje
    Recibido=imread('100','png');
    if(isequal(Numero_Usuario,[0 1]))
        axes(handles.axes12);
            imagesc(Recibido);
        axis off;
        cla(handles.axes13,'reset');
        cla(handles.axes14,'reset');
        set(handles.axes13,'visible', 'off');
        set(handles.axes14,'visible', 'off');
        set(handles.TextoCliente1,'string','');
        set(handles.TextoCliente2,'string','');
        set(handles.TextoCliente3,'string','');
    elseif(isequal(Numero_Usuario,[1 0]))
        axes(handles.axes13);
            imagesc(Recibido);
        axis off;
        cla(handles.axes12,'reset');
        cla(handles.axes14,'reset');
        set(handles.axes12,'visible', 'off');
        set(handles.axes14,'visible', 'off');
        set(handles.TextoCliente1,'string','');
        set(handles.TextoCliente2,'string','');
        set(handles.TextoCliente3,'string','');

    elseif(isequal(Numero_Usuario,[1 1]))
        axes(handles.axes14);
            imagesc(Recibido);
        axis off;
        cla(handles.axes12,'reset');
        cla(handles.axes13,'reset');
        set(handles.axes12,'visible', 'off');
        set(handles.axes13,'visible', 'off');
        set(handles.TextoCliente1,'string','');
        set(handles.TextoCliente2,'string','');
        set(handles.TextoCliente3,'string','');

    end
    % Demodulaci�n de la se�al
    Sx3_Demod=DEMPSK1(Sx_R2,t,M,bit3Sx); %Se�al demodulada
    if(bit3Sx==0) % La informaci�n es voz
        Bits_Rx1=decolinea(Sx3_Demod); %Decodificaci�n de canal
        Mensaje=decodificado(Bits_Rx1,quantvalue); %Decodificaci�n 
    else
        Mensaje=decotexto(Sx3_Demod);
    end
end
end
varargout{1} = handles.output;

function pushbutton25_Callback(hObject, eventdata, handles)
global Mensaje Numero_Usuario bit3Sx;
Recibir=Mensaje;
if(isequal(Numero_Usuario,[0 1]))
    if(bit3Sx==1)
        set(handles.TextoCliente1,'string',Recibir);
    else
        sound(Recibir,8000);
    end   
end

function pushbutton27_Callback(hObject, eventdata, handles)
global Mensaje Numero_Usuario bit3Sx;
Recibir=Mensaje;
if(isequal(Numero_Usuario,[1 1]))
    if(bit3Sx==1)
        set(handles.TextoCliente3,'string',Recibir);
    else
        sound(Recibir,8000);
    end
end


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
global Mensaje Numero_Usuario bit3Sx;
Recibir=Mensaje;
if(isequal(Numero_Usuario,[1 0]))
    if(bit3Sx==1)
        set(handles.TextoCliente2,'string',Recibir);
    else
        sound(Recibir,8000);
    end
end

function pushbutton29_Callback(hObject, eventdata, handles)
global Mensaje;
set(handles.TextoCliente1,'string','');
set(handles.TextoCliente2,'string','');
set(handles.TextoCliente3,'string','');
Mensaje=[];
cla(handles.axes12,'reset');
cla(handles.axes13,'reset');
cla(handles.axes14,'reset');
set(handles.axes12,'visible', 'off');
set(handles.axes13,'visible', 'off');
set(handles.axes14,'visible', 'off');

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

% --- Executes on button press in radiobutton.
function radiobutton_Callback(hObject, eventdata, handles)

% --- Executes on button press in EnviarTexto.
function EnviarTexto_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of EnviarTexto
CheckButtonTexto = get(handles.EnviarTexto,'Value');
if (CheckButtonTexto == 1)
                set(handles.EnviarTextoInicial,'visible','on');
                set(handles.EnviarTextoText,'visible','on');            
end

% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in EnviarAudio.
function EnviarAudio_Callback(hObject, eventdata, handles)
CheckButtonAudio = get(handles.EnviarAudio,'Value');
if (CheckButtonAudio == 1)
                set(handles.EnviarTextoInicial,'visible','off');
                set(handles.EnviarTextoText,'visible','off');
end


% --- Executes on button press in pushbutton29.


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
main
close read
