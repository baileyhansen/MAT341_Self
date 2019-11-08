%use Newton's Method to find local minima of: f(x)= 0.5- xe^((-x)^2)) on
%[0,2]
function N= Newtons_1D_Opt(tol)
xn= 0.25;%1.5; 
xm= 2;
err= abs(xm-xn);
%initalize a counter 
count= 0;
while err > tol
    xm= xn - (g(xn)/h(xn));
    err= abs(xm-xn);
    xn= xm; 
    count= count+1;
end 
xm
N=count
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val= g(x)
val= exp(-(x^2))*(2*(x^2) -1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val= h(x)
val= 2*x*exp(-(x^2))*(-2*(x^2) +3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS 
% a) To achieve 1e-8 accuracy it takes 6 iterations. 
%
% b) When the initial guess is changed to 1.5 the number of iterations
% increases greatly to 736. 
