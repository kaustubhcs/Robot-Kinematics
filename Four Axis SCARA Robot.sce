// Code for 4 Axis SCARA Robot


// Initialise
clc;
clear all;


disp('For 4 axis SCARA Robot: ')
for i=1:4
    disp('For Joint No.')
    disp(i)
    theta(i)= input('Enter joint angle     : ');
    d(i)=input('Enter joint distance  : ');
    alpha(i)=input('Enter link twist angle: ');
    a(i)=input('Enter link length     : ');
end

// Matrix Initialisation
T=[cosd(theta(1)-theta(2)-theta(4))   sind(theta(1)-theta(2)-theta(4))      0       a(1)*cosd(theta(1))+a(2)*cosd(theta(1)-theta(2));
    sind(theta(1)-theta(2)-theta(4))      -cosd(theta(1)-theta(2)-theta(4))     0  a(1)*sind(theta(1))+a(2)*sind(theta(1)-theta(2));
0     0     -1      d(1)-d(3)-d(4); 
0     0      0       1 ]
   
disp('T=')
disp(T)
