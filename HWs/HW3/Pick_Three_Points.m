%funtion to picks 3 values along a circle to make the triangle 
function vector= Pick_Three_Points()

%picks the 3 random points in polar coordinates to make things simplier in our original code 
x= 2* pi* rand();
y= 2* pi* rand();
z= 2* pi* rand();

%this puts the 3 points into a vector and then organizes them in ascending order 
vector= [x y z];
sort(vector);
