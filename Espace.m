close all
x1=[200 200*sqrt(2) 400 600];
x2=[231.9893  301.0309  407.1361  593.2405];
x3=[435.9724  429.9768  461.0314  542.2742];
x4=[224.9162  218.9266  249.9524  331.1366];
x=x4;
l1=x(1);
l2=x(1);
a=x(3);
b=x(4);
pas=(l1+l2+b/2)/20;
x_=-(l1+l2+b/2):pas:(l1+l2+b/2);
y_=-(l1+l2+b/2):pas:(l1+l2+b/2);
z_=0:pas:(l1+l2+b/2);
X=[];
Y=[];
Z=[];
for i=1:size(x_,2)
    for j=1:size(y_,2)
        for k=1:size(z_,2)
            P(1)=x_(i);
            P(2)=y_(j);
            P(3)=z_(k);
            P(4)=pi/2;
            [phi,err] = Model(P,b,a,l1,l2);
            if err==0
                X=[X,P(1)];
                Y=[Y,P(2)];
                Z=[Z,P(3)];
            end
        end
    end
end


Xs=[0 0 0 0];
Ys=[-150 -150 150 150];
Zs=[0 25 25 0];

plot3(X,Y,Z,'.',Xs,Ys,Zs);

grid on;
axis square;
xlabel('x');
ylabel('y');
zlabel('z');  
figure;

y=-160:1:160;
z=0:0.2:30;

Y_=[];
Z_=[];

for j=1:size(y,2)
    for k=1:size(z,2)
        P(1)=0;
        P(2)=y(j);
        P(3)=z(k);
        P(4)=pi/2;
        [phi,err] = Model(P,b,a,l1,l2);
        if err==0
           
            Y_=[Y_,P(2)];
            Z_=[Z_,P(3)];
        end
    end
    
end
plot(Y_,Z_,'.',Ys,Zs);
figure;
MGI;