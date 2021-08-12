function [M,Ms,theta,beta,tao,m,landa,S,E,I,R,F,N,k]= datospoblacionales
caso=input('en que caso estamos? ');
%Los datos de salida de M y Ms los introduzco dentro del function todo
%dentro de un bucle if, con la condición de los distintos apartados del
%ejercicio con motivo de simplificar el desarrollo y la comparacion directa
%de los tres casos, con sus respectivas graficas. cometí varios errores
%antes al no introducir bien las variantes. 
if caso==1
    M=20;
    Ms=30;
elseif caso==2
    M=30;
    Ms=35;
else caso=3
    M=40;
    Ms=45;
end
theta=1/7; %Tasa de Incubación
beta=ones(365,1); %Tasa de Propagación
beta(1)=1.2; 
tao=0.9; %Tasa de Recuperación
m=(1-tao); %Tasa de Mortalidad
landa=beta(1)/2.68; %Tasa de Actividad
S=zeros(365,1); %Número de susceptibles
S(1)=6499900; 
E=zeros(365,1); %Número de Expuestos
E(1)=80; 
I=zeros(365,1); %Número de Infectados
I(1)=20; 
R=zeros(365,1); %Número de recuperados
R(1)=0; 
F=zeros(365,1); %Número de fallecidos
F(1)=0; 
N=6500000; %Población
k=100; %Constante usada para cálculo de beta
end