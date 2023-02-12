function Ai = trouver_Ai(i,b)
switch i
    case 1
         Ai=[b/2 b/2 0];
    case 2
          Ai=[-b/2 b/2 0];
    case 3
         Ai=[-b/2 -b/2 0];
    case 4
         Ai=[b/2 -b/2 0];    
end