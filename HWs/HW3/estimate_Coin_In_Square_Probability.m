%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% N= 1e5 is a reasonable number of trials because it is a very large number
% and eventually will converge to an answer
%This is more difficult than the coin flip in class because this needs to
%take into account if it is outside of the box on the x or y axis, so there
%are more boudaries that need to be taken into account 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

function prob = estimate_Coin_In_Square_Probability(r, N)
count= 0;
%for loop to go through all the coin flips 
for i= 1:N
    %picks a random x value to be the center point of the coin
    x= rand();
    %this adds the radius to the left and right of this point to make the
    %size of the coin
    xright= x + r;
    xleft = x - r;
    
    %picks a random y value to be the center point of the coin 
    y = rand();
    %adds the radius to above and below the point to make the size of the
    %coin 
    yup = y+ r;
    ydown = y - r;
    %checks if the coin is out of the square on the right or left or up or down 
    if (((xright >= 1) || (xleft <= 0))|| ((yup >= 1) || (ydown <= 0)))
        %adds a number to count which is how many were out of square
        count= count+1; 
    end 
   
end 

prob= (N-count)/N 

        
    