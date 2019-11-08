function N =Nelder_Mead(tol)
%selects random numbers to assign to the variables
x1= 0.35;
y1= 2.8;
x2= -0.25;
y2= 0.3;
x3= 1.5;
y3= 0.5;

A= [x1 y1; x2 y2; x3 y3];

%step 2 for sorting the points best to worst 
B= [f(A(1,:)),f(A(2,:)), f(A(3,:))];

[fNew, indsVec] = sort(B);
 
x1= A(indsVec(1),:);
x2= A(indsVec(2),:);
x3= A(indsVec(3),:);
count= 1;

while abs(B(1)- B(3)) > tol
    xm= 0.5*(x1 +x2);
    xr= xm+ (xm- x3);
    if f(xr) < f(x3)
        x3 = xr;
        %go back to step 2 and repeat 
    else if f(xr) >= f(x3)
            xc= 1/2 *(xm + x3);
            
            if f(xc) < f(x3)
                x3= xc;
                %go back to step 2 and repeat 
            else
                %shrink triangle m in direction x1
                x2 = 1/2 *(x1 + x2);
                x3 = 1/2 *(x1 + x3);
                %go back to step 2 and repeat 
               
            end
        end 
    end 
    A= [x1; x2; x3];
    B= [f(A(1,:)),f(A(2,:)), f(A(3,:))];

    [fNew, indsVec] = sort(B);
 
    x1= A(indsVec(1),:);
    x2= A(indsVec(2),:);
    x3= A(indsVec(3),:);
    count= count+1;
end
x1
N= count
err= abs(B(1)- B(3))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val= f(x)
val= -(sin(x(1))+cos(x(2)));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
% a) With the given initial points to achieve 1e-8 accuracy it takes 30 iterations
%
% b) For the initial points it seems to converge to the point 1.5708 which
% is close to the value of pi/2 and 0. The true minima converges to the points
% pi/2 and 0 
%
% c) To achieve 1e-8 accuracy it takes 59 iterations. It locted the minima
% of pi/2, just like in part b. The number of iterations is more
% than part a because now the point is closer to the minima so it goes through and 
% tries more points to be sure. 
%
% d) The minima that these new points found is at -4.7123 and 0. This took
% 54 iterations at 1e-8 accuracy.

