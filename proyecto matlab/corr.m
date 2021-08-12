
%A:correccion de la tabla de infectados totales
dias=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];
IN=[1,4,6,12,19,14,25,41,44,59,54,83,65,244,557,464,583,869,2086,1100,1512];
fallecidos=[17,30,36,55,86,133,193,292,342,491,638,833,1042,1378,1772,2182,2696,3434,4089,4858,5694];
IT=[674,1231,1695,2277,3146,5232,6332,7844,9942,11178,14769,18077,20410,25374,28768,33089,39673,47610,56188,64059,72248];
I=[244,557,464,583,869,2086,1100,1512,2098,1236,3591,3308,2333,4964,3394,4321,6584,7937,8578,7871,8189];
tasa=0.0138;
N=length(IN);
N=21;

for i=1:1:N
    IN=fallecidos(1:i)/tasa;
end

%INE=xlsread('Libro3','B4:V4')
IN=[1231,2173,2603,3985,6231,9637,13985,21159,24782,35579,46231,60362,75507,99855,128405,158115,195362,248840,296304,352028,412608];
INE=[0,942,434,1376,2246,3405,4347,7173,3623,10797,10652,14130,15144,24347,28550,29710,37246,53478,47463,55724,60579];

%B necesito estimar el resto de valores a partir del dia 15 de marzo. Para
%ello utilizaré un polinomio calculado con el metodo de los minimos
%cuadrados. 
%INE=infectados nuevos estimados
%IN=infectados nuevos
%ratio de los ultimos ocho dias=(INEn/INn-1)
J=0;
for j=0:1:7
    J=J+j;
end
A(3,3)=sum(J.^4);
A(1,1)=8;
A(3,1)=sum(J.^2);
A(2,3)=sum(J.^3);
A(1,2)=sum(J);
A(3,2)=sum(J.^3);
A(2,2)=sum(J.^2);
A(1,3)=sum(J.^2);
A(2,1)=sum(J);
RATIO(1:8)=INE(14:21)./IN(13:20);
B(1,1)=sum(RATIO);
B(2,1)=sum(RATIO*J);
B(3,1)=sum(RATIO*J^2);
c=inv(A)*B;


%C

for k=22:1:34
     IN(k)=IN(k-1)+INE(k);
     INE(k)=r*IN(k-1);   
     r=C(1)+(k-14)*C(2)+(k-14)^2*C(3);
end
 for k=22:1:34
     %saco los valores de IN
     p2(k)=C(1)+(k-14)*C(2)+(k-14)^2*C(3);
 end
% me crea dos filas y dos columnas (4 espacios), si le digo subplot (3,2) me hace 3 filas y dos columnas 
 hold on 
 grid on
 subplot([14:21],RATIO,'ob','linewidth',3);
 plot([1,N])
