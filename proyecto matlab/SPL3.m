function [a,b,c,d]=SPL3(F,Trid,z)
N=length(F);
n=N-1;
    for i=1:n
    d(i-1)=(c(i)-c(i-1))/3;
    b(i-1)=F(i)-F(i-1)-c(i-1)-d(i-1);
    a(i)=F(i);
end
    Trid=diag(2*ones(1,n),0)+diag(4*ones(2,n-1),0)+diag(1*ones(1,n-2),1)+diag(1*ones(1,n-2),-1);
    for i=1:n-1
        p=3;
    z(i)=p*(F(i-2)-2*F(i-1)+F(i));
    end
    c=Trid.'*z;
    