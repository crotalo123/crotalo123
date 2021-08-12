function [z]=E2A2bahamondes(n)
m=length(n);
p=floor(m/10);
r=rem(m,10);
m=p;
z=[r];
while (m>0)
    p=floor(m/10);
    r=rem(m,10);
    m=p;
    z=[r,z];
end


    
    
