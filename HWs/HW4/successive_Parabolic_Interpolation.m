function N= successive_Parabolic_Interpolation(tol)
err= 1; %set error to 1 to enter the loop
%set the initial points
x1= 0;
x2= 0.6;
x3= 0.9; %3; 
count= 0; %initialize a counter 
while (abs(x3 - x1))> tol
    %create a matrix A to hold all the values 
    A = [x1^2 x1 1 f(x1); x2^2 x2 1 f(x2); x3^2 x3 1 f(x3)];
    %row reduce matrix A
    B= rref(A);
    %find the min of the values and then change x2 to x3 and x1 to x2 and
    %x1 to xmin
    xmin = -B(2,4)/(2*B(1,4));
    x3= x2;
    x2= x1;
    x1= xmin;
    count= count+1; %add to the counter for the number of iterations 
end 
xmin 
N=count

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val= f(x)
val= 0.5 - x *exp(-x^2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
% a) It takes 7 iterations to achieve 1e-8 accuracy with the initaial
% guesses 
%
% b) When x3 is changed to 2: The number of iterations increases to 95 to
% achieve the same accuracy of 1e-8. I did not recieve any warnings from
% MATLAB anout changing the x3 = 2.
