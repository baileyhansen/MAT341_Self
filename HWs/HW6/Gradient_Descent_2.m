function N= Gradient_Descent_2(tol)
gamma= 0.5; %set the gamma
err= 1;
count= 0;%initialize a counter
A= [1; 1.5]; %set the point

while err > tol
    B= A - gamma * gradf(A(1), A(2));
    err= sqrt((B-A).' *(B-A)); %equation to find error
    gamma= (abs((B-A).' *(gradf(B(1),B(2))-gradf(A(1), A(2)))))/((sqrt((gradf(B(1),B(2))-gradf(A(1), A(2))).' *(gradf(B(1),B(2))-gradf(A(1), A(2)))))^2);
    A=B; %sets the new point to the old point 
    count= count+1;
end
A
N= count

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val= gradf(x,y)
val= [-cos(x); sin(y)];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ANSWERS
% a) With the initial point that is given, achieving 1e-6 accuray takes 6
% iterations.
% b)With the initial point that is given, achieving 1e-10 accuray takes 7
% iterations.

