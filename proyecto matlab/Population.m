function [M,Ms,theta,beta,tao,r,landa,S,E,I,R,F,N,k]= Population
M=20; %D�a en el que empiezan las medidas
Ms=30; %D�a en el que empiezan medidas severas 
theta=1/7; %Tasa de Incubaci�n
beta=ones(365,1); %Tasa de Propagaci�n
beta(1)=1.2; 
tao=0.91; %Tasa de Recuperaci�n
r=(1-tao); %Tasa de Mortalidad
landa=beta(1)/2.68; %Tasa de Actividad
S=zeros(365,1); %N�mero de susceptibles
S(1)=6499900; 
E=zeros(365,1); %N�mero de Expuestos
E(1)=80; 
I=zeros(365,1); %N�mero de Infectados
I(1)=20; 
R=zeros(365,1); %N�mero de recuperados
R(1)=0; 
F=zeros(365,1); %N�mero de fallecidos
F(1)=0; 
N=6500000; %Poblaci�n
k=100; %Constante usada para c�lculo de beta
function [M,Ms,theta,beta,tao,r,landa,S,E,I,R,F,N,k]= Population
M=30; %D�a en el que empiezan las medidas
Ms=35; %D�a en el que empiezan medidas severas 
theta=1/7; %Tasa de Incubaci�n
beta=ones(365,1); %Tasa de Propagaci�n
beta(1)=1.2; 
tao=0.91; %Tasa de Recuperaci�n
r=(1-tao); %Tasa de Mortalidad
landa=beta(1)/2.68; %Tasa de Actividad
S=zeros(365,1); %N�mero de susceptibles
S(1)=6499900; 
E=zeros(365,1); %N�mero de Expuestos
E(1)=80; 
I=zeros(365,1); %N�mero de Infectados
I(1)=20; 
R=zeros(365,1); %N�mero de recuperados
R(1)=0; 
F=zeros(365,1); %N�mero de fallecidos
F(1)=0; 
N=6500000; %Poblaci�n
k=100; %Constante usada para c�lculo de beta
function [M,Ms,theta,beta,tao,r,landa,S,E,I,R,F,N,k]= Population
M=40; %D�a en el que empiezan las medidas
Ms=45; %D�a en el que empiezan medidas severas 
theta=1/7; %Tasa de Incubaci�n
beta=ones(365,1); %Tasa de Propagaci�n
beta(1)=1.2; 
tao=0.91; %Tasa de Recuperaci�n
r=(1-tao); %Tasa de Mortalidad
landa=beta(1)/2.68; %Tasa de Actividad
S=zeros(365,1); %N�mero de susceptibles
S(1)=6499900; 
E=zeros(365,1); %N�mero de Expuestos
E(1)=80; 
I=zeros(365,1); %N�mero de Infectados
I(1)=20; 
R=zeros(365,1); %N�mero de recuperados
R(1)=0; 
F=zeros(365,1); %N�mero de fallecidos
F(1)=0; 
N=6500000; %Poblaci�n
k=100; %Constante usada para c�lculo de beta