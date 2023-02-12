function [phi,err] = Model(P,b,a,l1,l2) %phi contient les 4 articulations motorisées

phi=zeros(1,4);
err=0;
for i=1:4
    Ai = trouver_Ai(i,b);
    [B,err_] = trouver_B(i,P,a,b,l1,l2);
    if err_==0
        x_b=B(1);
        y_b=B(2);
        x_a=Ai(1);
        y_a=Ai(2);
        cos=(x_b-x_a)/l1;
        sin=(y_b-y_a)/l1;
        phi(i)=atan2(sin,cos);

    else
        err=err_;
    end
end