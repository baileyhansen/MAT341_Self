%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The r values that give estimated probabilites 0.5, 0.1 and 0.01
%0.5 r= 0.14
%0.1 r= 0.34
%0.01 r= 0.44
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function to see if the probability will change for different radii of the
%coin 
function vary_Radii_Plot()

rVec=[0.01:0.005:0.10 0.1:0.01:0.5];

% for loop to go through different possible radii of the coin 
for i= 1:length(rVec)
    prob(i) = estimate_Coin_In_Square_Probability(rVec(i), 1e5);
    %need a line here i think
    
end

%plots the data into a graph 
plot(rVec, prob, 'r*');
%label the x and y axis
xlabel('Radius');
ylabel('Estimated Probability');
set(gca, 'FontSize', 18);
