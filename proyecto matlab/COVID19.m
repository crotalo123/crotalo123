close all
clear all
[M,MS,theta,beta,tao,r,landa,S,E,I,R,F,N,k]= datospoblacionales;

for t=1:1:(M-1)
    beta(t)=beta(1);
    S(t+1)=S(t)-beta(t)*S(t)*I(t)/N;
    E(t+1)=E(t)*(1-theta)+beta(t)*S(t)*I(t)/N;
    I(t+1)=I(t)+(theta*E(t)-landa*I(t));
    F(t+1)=F(t)+r*landa*I(t);
end
for t=M:1:MS
    q(t)=(I(t)/20);
    f(t)=(0.2+0.5*(t-M)/(MS-M));
    beta(t)=beta(1)*(1-f(t))*(1-q(t)/N)^k;
    S(t+1)=S(t)-beta(t)*S(t)*I(t)/N;
    E(t+1)=E(t)*(1-theta)+beta(t)*S(t)*I(t)/N;
    I(t+1)=I(t)+(theta*E(t)-landa*I(t));
    F(t+1)=F(t)+r*landa*I(t);
end
for t=MS:1:364
    
    q(t)=(I(t)/20);
    beta(t)=beta(1)*0.3*(1-q(t)/N)^k;
    S(t+1)=S(t)-beta(t)*S(t)*I(t)/N;
    E(t+1)=E(t)*(1-theta)+beta(t)*S(t)*I(t)/N;
    I(t+1)=I(t)+(theta*E(t)-landa*I(t));
    F(t+1)=F(t)+r*landa*I(t);
end
X=linspace(0,365,365);
%podría incluir en la funcion a los recuperados, pero me entorpece la
%visualizacion correcta de los resultados. Además, en mi opinion son de
%mayor interés los datos de expuestos, fallecidos e infectados. 
plot(X,E,'LineWidth',2)
hold on
plot(X,I,'LineWidth',2)
hold on
plot(X,F,'LineWidth',2)
title('COVID19')
xlabel('días')
ylabel('individuos')
legend('expuestos','infectados','fallecidos')

%CONCLUSION: Con este metodo puede verse claramente la disposicion de la
%enfermedad sobre poblaciones grandes, y ccuantas personas puede abarcar en
%cuestion de un rango corto de días (entre 5 y 10 días). También puedo
%observar la importancia de la rapida actuacion en una poblacion
%considerable, ya que la pendiente de la curva es inversamente proporcional
%al margen de dias entre M y Ms.