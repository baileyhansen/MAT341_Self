function plot_Nested_Times()

%N values we want tested
N = [1:1:10 20:10:100 125 150 175 200 225 250];

 %this is a for loop that will put the vales of time through the 
 %tic toc function from before and save them in a vector 
for i = 1:length(N) 
    time(i)= calculate_Nested_For_Loop_Time(N(i)); 
end 

%creating the graph
%this will graph the N values and the times that were saved 
%m indicates magenta 
%N and time are the variables 
%8 is the line width
loglog(N, time, 'm','LineWidth', 8);
xlabel('N'); %labeling the x-axis
ylabel('Time'); %labeling the y-axis