
// Denavit-Hartenberg (D-H) Algorithm

dof = input('Degrees of Freedom: ');


for i = 1:dof
    disp('Parameters for')
    disp(i);
tht(dof) = input('Theta: ');
ak(dof) = input('Length of Link: ');
    
end





Pmx = input('Enter Initial X co-ordinate ');
Pmy = input('Enter Initial X co-ordinate ');
Pmz = input('Enter Initial X co-ordinate ');

Pm = [Pmx; Pmy; Pmz; 1];

for k = 1:dof 

Tk(k) = [cosd(tht(k)) -sind(tht(k)) 0 ak(k)*cosd(tht(k)); sind(tht(k)) cosd(tht(k)) 0 ak(k)*sind(tht(k)); 0 0 1 0; 0 0 0 1]

if (k!=1)
Tf = Tk(k) * Tk(k-1);

end
end



Pf = Tf*Pm;

disp(Pf);




















disp('1 = Find R');
disp('2 = Find phi and u');
ktb = input('1 OR 2: ');

select ktb

case 1 then
p = input('Input value of PHI: ');
disp('Enter value of U')

u1 = input('Input value of PHI- X Coordinate:');

u2 = input('Input value of PHI- Y Coordinate:');

u3 = input('Input value of PHI- Z Coordinate:');

us = sqrt(u1^2 + u2^2 + u3^2);


u1 = u1/us;

u2 = u2/us;

u3 = u3/us;

v = 1 - cosd(p);

R = [u1^2*v+cosd(p) u1*u2*v-u3*sind(p) u1*u3*v+u2*sind(p); 
    u1*u2*v+u3*sind(p) u2^2*v+cosd(p) u2*u3*v-u1*sind(p); 
    u1*u3*v-u2*sind(p) u2*u3*v+u1*sind(p) u3^2*v+cosd(p)]
    
    
disp(R);

break;

case 2 then
    
    disp("Enter R Matrix")
    r1 = input('Input Elements of R: ');
    r2 = input('Input Elements of R: ');
    r3 = input('Input Elements of R: ');
    
    r4 = input('Input Elements of R: ');
    r5 = input('Input Elements of R: ');
    r6 = input('Input Elements of R: ');
    
    r7 = input('Input Elements of R: ');
    r8 = input('Input Elements of R: ');
    r9 = input('Input Elements of R: ');
    
    
    
    tr = r1 + r5 + r9;
    phi = acosd(tr - 1);
    
    um = ( 1/(2*sind(phi) ) ); 
    u = um * [r6 - r8; r7 - r3; r2 - r4]
    
    disp(phi);
    disp(u);
   



