%B.
function [x]=ATH(A,B,C,F)
m=N:N; %una matriz que tiene N filas con N columnas
f=N:1;%una matriz que tiene N filas y 1 columna
x=m.'*f;
A(2)=m(2:1);
B(1)=m(1:1);
C(1)=m(1:2);
F(1)=f(N:1);
length(r)=N-1;
length(z)=N;

for j=(N-1):1:1
    x(j)=z(j)-r(j)*x(j+1);
    while (2<=j)&(j<=(N-1))
    r(j)=C(j)/B(j)-r(j-1)*A(j);
    end
    
    while (2<=j)&(j<=N)
    z(j)=(F(j)-z(j-1)*A(j))/(B(j)-r(j-1)*A(j));
    end
    x=m.'*f;
end
end
