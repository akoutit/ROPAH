close all
%v = VideoWriter('animation.avi');
%open(v);
set(gcf, 'Position',get(0,'Screensize'));
axis([-300 300 -300 300 0 30]);
x=[224.9162  218.9266  249.9524  331.1366];

l1=x(1);
l2=x(2);
a=x(3);
b=x(4);
for k=0:0.1:25
    yc=0;
    zc=0;
    P(1)=0;
    P(2)=yc-150;
    P(3)=zc+k;
    P(4)=0;
    get_figure;
end
for theta=0:pi/100:pi/2
    P(1)=0;
    P(2)=yc-150;
    P(3)=zc+25;
    P(4)=theta;
    get_figure;
end
for j=0:1:300
    yc=0;
    zc=0;
    P(1)=0;
    P(2)=yc-150+j;
    P(3)=zc+25;
    P(4)=pi/2;
    get_figure;
end
for theta=pi/2:-pi/100:0
    P(1)=0;
    P(2)=yc+150;
    P(3)=zc+25;
    P(4)=theta;
    get_figure;
end
for k=25:-0.1:0
    
    yc=0;
    zc=0;
    P(1)=0;
    P(2)=yc+150;
    P(3)=zc+k;
    P(4)=0;
    get_figure;
        
    
end
P=[0 yc+150 zc 0];
for t=0:100
get_figure;
end
close all;


%close all;
% close(v);
