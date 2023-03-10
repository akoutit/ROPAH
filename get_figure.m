   
    
    A1 = trouver_Ai(1,b);
    A2 = trouver_Ai(2,b);
    A3 = trouver_Ai(3,b);
    A4 = trouver_Ai(4,b);
    C1 = trouver_Ci(P,1,a);
    C2 = trouver_Ci(P,2,a);
    C3 = trouver_Ci(P,3,a);
    C4 = trouver_Ci(P,4,a);
    [B1,err1] = trouver_B(1,P,a,b,l1,l2);
    [B2,err2] = trouver_B(2,P,a,b,l1,l2);
    [B3,err3] = trouver_B(3,P,a,b,l1,l2);
    [B4,err4] = trouver_B(4,P,a,b,l1,l2);
    
    Xb=[A1(1) A2(1) A3(1) A4(1) A1(1)];
    Yb=[A1(2) A2(2) A3(2) A4(2) A1(2)];
    Zb=[A1(3) A2(3) A3(3) A4(3) A1(3)];
   
    Xa=[C1(1) C2(1) C3(1) C4(1) C1(1)];
    Ya=[C1(2) C2(2) C3(2) C4(2) C1(2)];
    Za=[C1(3) C2(3) C3(3) C4(3) C1(3)];

    X1=[A1(1) B1(1) C1(1)];
    Y1=[A1(2) B1(2) C1(2)];
    Z1=[A1(3) B1(3) C1(3)];

    X2=[A2(1) B2(1) C2(1)];
    Y2=[A2(2) B2(2) C2(2)];
    Z2=[A2(3) B2(3) C2(3)];

    X3=[A3(1) B3(1) C3(1)];
    Y3=[A3(2) B3(2) C3(2)];
    Z3=[A3(3) B3(3) C3(3)];

    X4=[A4(1) B4(1) C4(1)];
    Y4=[A4(2) B4(2) C4(2)];
    Z4=[A4(3) B4(3) C4(3)];

    Xs=[0 0 0 0];
    Ys=[-150 -150 150 150];
    Zs=[0 25 25 0];
   fig= plot3(Xb,Yb,Zb,Xa,Ya,Za,X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3,X4,Y4,Z4,P(1),P(2),P(3),'.',Xs,Ys,Zs,'-- r');
    grid on ;
    zlim([0 400]);
    ylim([-400 400]);
    xlim([-400 400]);
    pause(0.01);
    
    delete(fig);
