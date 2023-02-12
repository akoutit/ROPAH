% Initialisation
clear all
close all
clc

% Choix du materiau
global d rho 
d = 20/1000 ; %m
rho = 2800 ; % 7850 kg/m^3 pour l'acier, 2800 pour l'alu

%contrainte de raideur


% Optimisation
% x = [l1 l2 a b] 
lmax=1000;
A = [];
b = [];
Aeq = [];
beq = [];
lb = [100 100 100 100];
ub = [lmax lmax lmax lmax];

x0 = [5.7024   25.3572    8.8824   20.1344];
x1=[200 200*sqrt(2) 400 600];
x2=[231.9893  301.0309  407.1361  593.2405];
x3=[435.9724  429.9768  461.0314  542.2742];
x4=[240.7638  234.7732  300.0884  347.1476];
options1 = optimoptions(@fmincon,'Algorithm','sqp','MaxIterations',1500);
options=optimset('Display','iter', 'maxiter',4000,'MaxFunEvals',6000,'TolFun',1e-8, 'TolX',1e-8);
x = fmincon('obj',x3, A, b, Aeq, beq, lb, ub, 'nonlcon', options);

