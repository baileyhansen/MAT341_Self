function calculate_Pi_Sums()
tol= 10^(-6);%set the tolerance 
err= 1; %just to get into the loop
%set both sums initially to 0
sumA= 0;
sumB= 0;
% N is set to -1 because the for loop starts at 0 
N= -1; 

while err > tol %want to go trhough the loop while err > tol
   
    N = N+ 1;
    for k= 0:N %sumA for loop
        sumA=0;
        %the equation for sum A 
        sumA= sumA + (((-1)^k)/((3^k)*(2*k+1)));
        %multiplies the sum by 6/sqrt(3)
        sumA = sumA *(6/sqrt(3));
        %shows the error in the sumA and pi 
        err = abs(sumA - pi)
    end
    err = abs(sumA - pi)
end 
%prints the value N that it take for the error to be less than the
%tolerance 
N    

while err > tol %want to go trhough the loop while err > tol
   
    N = N+ 1;
    for k= 0:N %sumB for loop
        sumB=0;
        %the equation for the sumB 
        sumB= sumB + (16*((-1)^k/(5^(2*k+1)*(2*k+1))))-(4*((-1)^k/(239^(2*k+1)*(2*k+1))));\
        %this shows the error in the calculation of sumB as pi 
        err = abs(sumB - pi)
    end
    err = abs(sumB - pi)
end 
%prints the value N that gives an error less than the tolerance 
N    

        