function [B,err] = trouver_B(i,P,a,b,l1,l2)
err = 0;


A= trouver_Ai(i,b);
C= trouver_Ci(P,i,a);
x_a=A(1);
y_a=A(2);
z_a=A(3);
x_c=C(1);
y_c=C(2);
z_c=C(3);
z_b=z_a;

% syms x_b y_b;
% Cercle = (x_b-x_a)^2+(y_b-y_a)^2 == l1^2;
% Sphere = (x_b-x_c)^2+(y_b-y_c)^2+(z_b-z_c)^2 == l2^2;
% eqn = [Cercle , Sphere];
% S= solve(eqn,[x_b,y_b]);
Sx=(y_c*(- l1^4 + 2*l1^2*l2^2 + 2*l1^2*x_a^2 - 4*l1^2*x_a*x_c + 2*l1^2*x_c^2 + 2*l1^2*y_a^2 - 4*l1^2*y_a*y_c + 2*l1^2*y_c^2 - 2*l1^2*z_c^2 - l2^4 + 2*l2^2*x_a^2 - 4*l2^2*x_a*x_c + 2*l2^2*x_c^2 + 2*l2^2*y_a^2 - 4*l2^2*y_a*y_c + 2*l2^2*y_c^2 + 2*l2^2*z_c^2 - x_a^4 + 4*x_a^3*x_c - 6*x_a^2*x_c^2 - 2*x_a^2*y_a^2 + 4*x_a^2*y_a*y_c - 2*x_a^2*y_c^2 - 2*x_a^2*z_c^2 + 4*x_a*x_c^3 + 4*x_a*x_c*y_a^2 - 8*x_a*x_c*y_a*y_c + 4*x_a*x_c*y_c^2 + 4*x_a*x_c*z_c^2 - x_c^4 - 2*x_c^2*y_a^2 + 4*x_c^2*y_a*y_c - 2*x_c^2*y_c^2 - 2*x_c^2*z_c^2 - y_a^4 + 4*y_a^3*y_c - 6*y_a^2*y_c^2 - 2*y_a^2*z_c^2 + 4*y_a*y_c^3 + 4*y_a*y_c*z_c^2 - y_c^4 - 2*y_c^2*z_c^2 - z_c^4)^(1/2) - y_a*(- l1^4 + 2*l1^2*l2^2 + 2*l1^2*x_a^2 - 4*l1^2*x_a*x_c + 2*l1^2*x_c^2 + 2*l1^2*y_a^2 - 4*l1^2*y_a*y_c + 2*l1^2*y_c^2 - 2*l1^2*z_c^2 - l2^4 + 2*l2^2*x_a^2 - 4*l2^2*x_a*x_c + 2*l2^2*x_c^2 + 2*l2^2*y_a^2 - 4*l2^2*y_a*y_c + 2*l2^2*y_c^2 + 2*l2^2*z_c^2 - x_a^4 + 4*x_a^3*x_c - 6*x_a^2*x_c^2 - 2*x_a^2*y_a^2 + 4*x_a^2*y_a*y_c - 2*x_a^2*y_c^2 - 2*x_a^2*z_c^2 + 4*x_a*x_c^3 + 4*x_a*x_c*y_a^2 - 8*x_a*x_c*y_a*y_c + 4*x_a*x_c*y_c^2 + 4*x_a*x_c*z_c^2 - x_c^4 - 2*x_c^2*y_a^2 + 4*x_c^2*y_a*y_c - 2*x_c^2*y_c^2 - 2*x_c^2*z_c^2 - y_a^4 + 4*y_a^3*y_c - 6*y_a^2*y_c^2 - 2*y_a^2*z_c^2 + 4*y_a*y_c^3 + 4*y_a*y_c*z_c^2 - y_c^4 - 2*y_c^2*z_c^2 - z_c^4)^(1/2) - l1^2*x_a + l2^2*x_a + l1^2*x_c - l2^2*x_c - x_a*x_c^2 - x_a^2*x_c + x_a*y_a^2 + x_a*y_c^2 + x_c*y_a^2 + x_c*y_c^2 - x_a*z_c^2 + x_c*z_c^2 + x_a^3 + x_c^3 - 2*x_a*y_a*y_c - 2*x_c*y_a*y_c)/(2*(x_a^2 - 2*x_a*x_c + x_c^2 + y_a^2 - 2*y_a*y_c + y_c^2));
Sy=(x_a*(- l1^4 + 2*l1^2*l2^2 + 2*l1^2*x_a^2 - 4*l1^2*x_a*x_c + 2*l1^2*x_c^2 + 2*l1^2*y_a^2 - 4*l1^2*y_a*y_c + 2*l1^2*y_c^2 - 2*l1^2*z_c^2 - l2^4 + 2*l2^2*x_a^2 - 4*l2^2*x_a*x_c + 2*l2^2*x_c^2 + 2*l2^2*y_a^2 - 4*l2^2*y_a*y_c + 2*l2^2*y_c^2 + 2*l2^2*z_c^2 - x_a^4 + 4*x_a^3*x_c - 6*x_a^2*x_c^2 - 2*x_a^2*y_a^2 + 4*x_a^2*y_a*y_c - 2*x_a^2*y_c^2 - 2*x_a^2*z_c^2 + 4*x_a*x_c^3 + 4*x_a*x_c*y_a^2 - 8*x_a*x_c*y_a*y_c + 4*x_a*x_c*y_c^2 + 4*x_a*x_c*z_c^2 - x_c^4 - 2*x_c^2*y_a^2 + 4*x_c^2*y_a*y_c - 2*x_c^2*y_c^2 - 2*x_c^2*z_c^2 - y_a^4 + 4*y_a^3*y_c - 6*y_a^2*y_c^2 - 2*y_a^2*z_c^2 + 4*y_a*y_c^3 + 4*y_a*y_c*z_c^2 - y_c^4 - 2*y_c^2*z_c^2 - z_c^4)^(1/2) - x_c*(- l1^4 + 2*l1^2*l2^2 + 2*l1^2*x_a^2 - 4*l1^2*x_a*x_c + 2*l1^2*x_c^2 + 2*l1^2*y_a^2 - 4*l1^2*y_a*y_c + 2*l1^2*y_c^2 - 2*l1^2*z_c^2 - l2^4 + 2*l2^2*x_a^2 - 4*l2^2*x_a*x_c + 2*l2^2*x_c^2 + 2*l2^2*y_a^2 - 4*l2^2*y_a*y_c + 2*l2^2*y_c^2 + 2*l2^2*z_c^2 - x_a^4 + 4*x_a^3*x_c - 6*x_a^2*x_c^2 - 2*x_a^2*y_a^2 + 4*x_a^2*y_a*y_c - 2*x_a^2*y_c^2 - 2*x_a^2*z_c^2 + 4*x_a*x_c^3 + 4*x_a*x_c*y_a^2 - 8*x_a*x_c*y_a*y_c + 4*x_a*x_c*y_c^2 + 4*x_a*x_c*z_c^2 - x_c^4 - 2*x_c^2*y_a^2 + 4*x_c^2*y_a*y_c - 2*x_c^2*y_c^2 - 2*x_c^2*z_c^2 - y_a^4 + 4*y_a^3*y_c - 6*y_a^2*y_c^2 - 2*y_a^2*z_c^2 + 4*y_a*y_c^3 + 4*y_a*y_c*z_c^2 - y_c^4 - 2*y_c^2*z_c^2 - z_c^4)^(1/2) - l1^2*y_a + l2^2*y_a + l1^2*y_c - l2^2*y_c + x_a^2*y_a + x_a^2*y_c + x_c^2*y_a + x_c^2*y_c - y_a*y_c^2 - y_a^2*y_c - y_a*z_c^2 + y_c*z_c^2 + y_a^3 + y_c^3 - 2*x_a*x_c*y_a - 2*x_a*x_c*y_c)/(2*(x_a^2 - 2*x_a*x_c + x_c^2 + y_a^2 - 2*y_a*y_c + y_c^2));
if (Sx<inf == 0 || Sx>-inf == 0 )
    Sx=0;
end
if (Sy<inf == 0 || Sy>-inf == 0 )
    Sy=0;
end
if imag(Sx)==0
    
    
    
 

     B(1) = real(Sx);
     B(2) = real(Sy);
     B(3) = z_b;
     B=[B(1) B(2) B(3)];
     if (abs(norm(B-A)-l1)>1e-8) %Probleme pour l'égalité puisque la résolution ne donne que des valeurs approchées
         err=1;
        B=[0 0 -10];
     end
     
else
    err=1;
    B=[0 0 -10];
end


end

