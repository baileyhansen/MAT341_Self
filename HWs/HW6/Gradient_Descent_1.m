function N= Gradient_Descent_1(tol,gamma)
err= 1;
count= 0;%initialize a counter 
A= [1; 1.5];%set the given point 
%gamma= 0.9 %for running the vary tolerences function

while err > tol
    B= A - gamma * gradf(A(1), A(2));
    err= sqrt((B-A).' *(B-A));%equation for error 
    A=B;%sets the new point to the old point 
    count= count+1;
end
A
N= count

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val= gradf(x,y)
val= [-cos(x); sin(y)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
% a) With the given initial point it takes 35 iterations to achieve 1e-10
% accuracy with a gamma of 0.5. 
% b) Using the given initial point it takes 12 iterations to achieve 1e-10
% accuracy with a gamma of 0.9.
% c) With the given initial point it takes 34 iterations to achieve 1e-10
% accuracy with a gamma of 1.5.
    