function [J,err] = Jacob_B(P,b,a,l1,l2)
err=0;
 J=zeros(4);

    

for i=1:4
    Ai = trouver_Ai(i,b);
    Ci = trouver_Ci(P,i,a);
    [B,err_] = trouver_B(i,P,a,b,l1,l2);
    if err_==0
        fi=Ci-B;
        fi=fi/norm(fi);
        AiCi=Ci-Ai;
        vec=cross(AiCi,fi);
        J(i,i)=vec(3);
    else
        err=err_;
    end
end

