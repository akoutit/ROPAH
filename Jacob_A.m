function J = Jacob_A(P,b,a,l1,l2)

 J=zeros(6);

    

for i=1:4
    
    Ci = trouver_Ci(P,i,a);
    [B,err_] = trouver_B(i,P,a,b,l1,l2);
    if err_==0
        
            fi=Ci-B;
            fi=fi/norm(fi);

            P_=[P(1) P(2) P(3)];
            CiP=P_-Ci;
            vec=cross(CiP,fi);
            J(i,1)=vec(1);
            J(i,2)=vec(2);
            J(i,3)=vec(3);
            J(i,4)=fi(1);
            J(i,5)=fi(2);
            J(i,6)=fi(3);
    end
end
   for i=5:6 
       Ai = trouver_Ai(i-4,b);
       [B,err_] = trouver_B(i-4,P,a,b,l1,l2);
       if err_==0
           
            mi=Ai-B;
            mi=mi/norm(mi);
            k=[0 0 1];
            vec=cross(mi,k);
            J(i,1)=vec(1);
            J(i,2)=vec(2);
            J(i,3)=vec(3);
            J(i,4)=0;
            J(i,5)=0;
            J(i,6)=0;
            
        end
    end
end

