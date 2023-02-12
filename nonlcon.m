function [C, Ceq]=nonlcon(x)

l1=x(1);
l2=x(2);
a=x(3);
b=x(4);

yc=0;
zc=0;
l=1;
    P(1)=0;
    P(2)=yc;
    P(3)=zc+25;
    P(4)=pi/2;
    
     [B,err] = Jacob_B(P,b,a,l1,l2);
     A = Jacob_A(P,b,a,l1,l2);
    Ceq(l)=err;
    if err==0
        C(2*l)=-1/cond(B)+0.1;
        C(2*l-1)=cond(A)/cond(B)+0.1;
    else
        C(2*l)=-1;
        C(2*l-1)=-1;
    end
    l=l+1;
%%
%up
for k=0:25
    P(1)=0;
    P(2)=yc-150;
    P(3)=zc+k;
    P(4)=0;
    
     [B,err] = Jacob_B(P,b,a,l1,l2);
     A = Jacob_A(P,b,a,l1,l2);
    Ceq(l)=err;
    if err==0
        C(2*l)=-1/cond(B)+0.1;
        C(2*l-1)=cond(A)/cond(B)+0.1;
    else
        C(2*l)=-1;
        C(2*l-1)=-1;
    end
    l=l+1;
end
%%
%rotation
for theta=0:pi/100:pi/2
    P(1)=0;
    P(2)=yc-150;
    P(3)=zc+25;
    P(4)=theta;
    
     [B,err] = Jacob_B(P,b,a,l1,l2);
     A = Jacob_A(P,b,a,l1,l2);
    Ceq(l)=err;
    if err==0
        C(2*l)=-1/cond(B)+0.1;
        C(2*l-1)=cond(A)/cond(B)+0.1;
    else
        C(2*l)=-1;
        C(2*l-1)=-1;
    end
    l=l+1;
end
%%
%move_right
for j=0:300
    P(1)=0;
    P(2)=yc-150+j;
    P(3)=zc;
    P(4)=0;
    
     [B,err] = Jacob_B(P,b,a,l1,l2);
     A = Jacob_A(P,b,a,l1,l2);
    Ceq(l)=err;
    if err==0
        C(2*l)=-1/cond(B)+0.1;
        C(2*l-1)=cond(A)/cond(B)+0.1;
    else
        C(2*l)=-1;
        C(2*l-1)=-1;
    end
    l=l+1;
end
%%
%Rotation
for theta=0:pi/100:pi/2
    P(1)=0;
    P(2)=yc+150;
    P(3)=zc+25;
    P(4)=theta;
    
     [B,err] = Jacob_B(P,b,a,l1,l2);
     A = Jacob_A(P,b,a,l1,l2);
    Ceq(l)=err;
    if err==0
        C(2*l)=-1/cond(B)+0.1;
        C(2*l-1)=cond(A)/cond(B)+0.1;
    else
        C(2*l)=-1;
        C(2*l-1)=-1;
    end
    l=l+1;
end
%%
%down
for k=0:25
    P(1)=0;
    P(2)=yc-150;
    P(3)=zc+25-k;
    P(4)=0;
    
     [B,err] = Jacob_B(P,b,a,l1,l2);
     A = Jacob_A(P,b,a,l1,l2);
    Ceq(l)=err;
    if err==0
        C(2*l)=-1/cond(B)+0.1;
        C(2*l-1)=cond(A)/cond(B)+0.1;
    else
        C(2*l)=-1;
        C(2*l-1)=-1;
    end
    l=l+1;
end
%%
C=[];
end

