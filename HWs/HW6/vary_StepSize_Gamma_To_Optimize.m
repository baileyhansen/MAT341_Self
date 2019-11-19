function vary_StepSize_Gamma_To_Optimize()
count=0;
%a vector that runs through possible gammas 
A= [0.1:0.02:1.5];
for i= 1:length(A)
    gradient1(i)= Gradient_Descent_1(A(i));
    count= count+ 1;
end 
%creating the graph that plots gamma vs. iterations
%this will graph the number of iterations and the gamma
%5 is the line width
semilogx(A, count, 'b', 'LineWidth', 5);
xlabel('Gamma'); %labeling the x-axis
ylabel('Number of Iterations,N'); %labeling the y-axis
%this adds a legend to the graph
legend('Fixed Step');