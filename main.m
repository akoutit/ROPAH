% Initialisation



% Choix du materiau
global d rho 
d = 20/1000 ; %m
rho = 2800 ; % 7850 kg/m^3 pour l'acier, 2800 pour l'alu

%contrainte de raideur


% Optimisation
% x = [l1 l2 a b] 
lmax=1000;
A = [];
b_ = [];
Aeq = [];
beq = [];
lb = [100 100 100 100];
ub = [lmax lmax lmax lmax];

x0 = [5.7024   25.3572    8.8824   20.1344];
x1=[200 200*sqrt(2) 400 600];
x2=[231.9893  301.0309  407.1361  593.2405];
x3=[435.9724  429.9768  461.0314  542.2742];
x4=[224.9162  218.9266  249.9524  331.1366]; % en considérant que les contraintes géométriques
x5=[387.6375  387.9306  436.0245  490.1253];
x6=[330.9228  330.6957  473.8056  472.4046];
x7=[330.4928  331.0376  473.7821  472.4131]; % sans considérer les singularités de la matrice A

x8=[363.5871  349.0358  562.9278  472.4136]; % résultat final en considérant toutes les contraintes


options1 = optimoptions(@fmincon,'Algorithm','sqp','MaxIterations',1500);
options=optimset('Display','iter', 'maxiter',4000,'MaxFunEvals',6000,'TolFun',1e-4, 'TolX',1e-4);
x = fmincon('obj',x7, A, b_, Aeq, beq, lb, ub, 'nonlcon', options);

