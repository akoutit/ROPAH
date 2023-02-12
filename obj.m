function f=obj(x)
l1=x(1);
l2=x(2);
a=x(3);
b=x(4);

%yc=x(6);
%zc=x(7);
global rho d
%on veut minimiser la masse du robot
f = rho*pi*d^2*(l1+l2+a+b)/1000;
end
