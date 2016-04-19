// Code for YPR Control of a point in Space

// Receiving Inputs from USER

// The YAW in degrees to rotate the point in Space
yaw = input('Enter YAW: ');

// The Pitch in degrees to rotate the point in Space
pitch = input('Enter Pitch: ');

// The Roll in degrees to rotate the point in Space
roll = input('Enter Roll: ');


// Rotation Matrices for obtaining the coordinates of the point with respect to 
// fixed axis whn tool tip is moved according to YPR values

// YAW Rotation Matrix
r1 = [1 0 0; 0 cosd(yaw) -sind(yaw); 0 sind(yaw) cosd(yaw)];


// Pitch Rotation Matrix
r2 = [cosd(pitch) 0 sind(pitch); 0 1 0; sind(pitch) 0 cosd(pitch)];


// Roll Rotation matrix
r3 = [cosd(roll) -sind(roll) 0; sind(roll) cosd(roll) 0; 0 0 1];

// Obtaining the location of point in 3D space in cartesian coordinates

// Input from USER
disp('Input Movable point coordinates: ')

// X Coordinate
x = input('X: ');


// X Coordinate
y = input('Y: ');


// X Coordinate
z = input('Z: ');

// Forming a column Matrix of the coordinates
Pm=  [x; y; z]

// Fm: Final Cartesian coordinates of the point in space with respect to 
// fixed axis
Fm = r1 * r2 * r3 * Pm;

// Display of Fixed cartesian coordinates
disp(Fm)

// 3D Animation of movement of Point in space

// Generating Line Spaces along every axis movement

// Line Space along X axis
ktbx = linspace(Pm(1), Fm(1), 100);


// Line Space along Y axis 
ktby = linspace(Pm(2), Fm(2), 100);


// Line Space along Z axis
ktbz = linspace(Pm(3), Fm(3), 100);

// Concatenate 3 Matrices
mega_ktb = [ktbx ktby ktbz]

// COMET3D animation functon

clf();

//comet3d([ktbx ktby ktbz]);
//comet3d(ktbx,ktbz,ktby)
comet3d ([0 Pm(1)],[0 Pm(2)],[0 Pm(3)],"colors",2);
comet3d (ktbx,ktby,ktbz,"colors",3);
comet3d ([0 Fm(1)],[0 Fm(2)],[0 Fm(3)],"colors",2);

// end
