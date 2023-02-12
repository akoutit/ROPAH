function Ci = trouver_Ci(P,i,a)
x=P(1);
y=P(2);
z=P(3);
c=cos(P(4)+pi/4);
s=sin(P(4)+pi/4);
d=a/sqrt(2);
switch i
    case 1
        Ci=[x+d*c y+d*s z];
    case 2
        Ci=[x-d*s y+d*c z];
    case 3
        Ci=[x-d*c y-d*s z];
    case 4
        Ci=[x+d*s y-d*c z];    
end