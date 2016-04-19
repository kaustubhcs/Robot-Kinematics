// Composite Homogenous Transformation Matrix

// Receiving Inputs from USER


disp('Input Coordinates of point with respect to Movable Axis')


x = input('X Coordinate: ');
y = input('Y Coordinate: ');
z = input('Z Coordinate: ');


Pm = [x; y; z; 1];




rot_3 = input('Enter the value to rotate with along F3 axis: ');

// Roll Rotation matrix
r3 = [cosd(rot_3) -sind(rot_3) 0 0; sind(rot_3) cosd(rot_3) 0 0; 0 0 1 0; 0 0 0 1];


disp('Enter the value to translate along axis: ');


translate_x = input('X axis: ');

translate_y = input('Y axis: ');

translate_z = input('Z axis: ');

trans_mat = [1 0 0 translate_x; 0 1 0 translate_y; 0 0 1 translate_z; 0 0 0 1];


rot_1 = input('Enter the value to rotate with along F1 axis: ');



// YAW Rotation Matrix

r1 = [1 0 0 0; 0 cosd(rot_1) -sind(rot_1) 0; 0 sind(rot_1) cosd(rot_1) 0; 0 0 0 1];

T = r1 * trans_mat * r3;

disp('The T matrix is: ');

disp(T);


Pf = T * Pm;


disp('Pf matrix is: ')
disp(Pf);

disp('Coordinates of the point with respect to fixed frame is: ');
disp('X Coordinate')
disp(Pf(1,1));


disp('Y Coordinate')
disp(Pf(2,1));


disp('Z Coordinate')
disp(Pf(3,1));






disp('The T Inverse matrix is: ');
T_inv = T^-1;
disp(T_inv);





// SCREW Transformation
disp('** SCREW Tranformation **');

screw_trans = input('Translation value for Screw Tranformation: ');

screw_rot = input('Input value of rotation along F2: ');



trans_mat_screw = [1 0 0 0; 0 1 0 screw_trans; 0 0 1 0; 0 0 0 1];


rot_mat_screw = [cosd(screw_rot) 0 sind(screw_rot) 0; 0 1 0 0; sind(screw_rot) 0 cosd(screw_rot) 0; 0 0 0 1];


T_screw = trans_mat_screw * rot_mat_screw;



disp('T matrix for SCREW transformation: ')

disp(T_screw);


Pf_screw = T_screw * Pm

disp('Pf matrix for SCREW Transformation is: ')
disp(Pf_screw);


disp('Coordinates of the point with respect to fixed frame is: ');
disp('X Coordinate')
disp(Pf_screw(1,1));


disp('Y Coordinate')
disp(Pf_screw(2,1));


disp('Z Coordinate')
disp(Pf_screw(3,1));

// EOC ***(End of Code)***
