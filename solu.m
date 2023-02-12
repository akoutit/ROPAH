syms x_b y_b x_a x_c y_a y_c z_c l1 l2;
Cercle = (x_b-x_a)^2+(y_b-y_a)^2 == l1^2;
Sphere = (x_b-x_c)^2+(y_b-y_c)^2+(z_c)^2 == l2^2;
eqn = [Cercle , Sphere];
S= solve(eqn,[x_b,y_b]);
Sx=simplify(S.x_b(1));
Sy=simplify(S.y_b(1));