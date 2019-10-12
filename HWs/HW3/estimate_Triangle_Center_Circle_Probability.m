%a function to find the probability that three random points along a circle create a 
%triangle that contains the origin when the radius is 2  
function prob = estimate_Triangle_Center_Circle_Probability(N)

%initalize the number of triangles containing the origin to 0  
within_the_Triangle= 0;

for i=1:N
    %uses the function to get the 3 points
    val = Pick_Three_Points();
    %checks if one of the points is in between the max- pi and min +pi 
    if val(2) > (val(1) + pi) && val(2) < (val(3) - pi)
        %counts when there is a triangle that contains the origin
        within_the_Triangle = within_the_Triangle +1;
    end 
end
%gives the probability that the triangle contains the origin by dividing
%the count of how many triangles divided by the number of triangles tried
prob = within_the_Triangle/N;