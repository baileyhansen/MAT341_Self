function vary_Error_Tolerances_To_Compare()

%vector of the error tolerances
errTolVec= [1e-1  1e-2  1e-3  1e-4  1e-5  1e-6  1e-7  1e-8  1e-9  1e-10  1e-11  1e-12];

%for loop that runs both the previous functions through the vector of error
%tolerances 
    for i= 1: length(errTolVec)
        golden(i)= golden_Search(errTolVec(i));
        parabolic(i)= successive_Parabolic_Interpolation(errTolVec(i));
        newtons(i)= Newtons_1D_Opt(errTolVec(i));
    end 
    
%creating the graph
%this will graph the number of iterations and the error tolerance
%r indicates red for the parabolic and b indicates blue for golden
%8 is the line width
figure(1);semilogx(errTolVec, golden, 'b', errTolVec, parabolic, 'r', errTolVec, newtons, 'k' , 'LineWidth', 5);
figure(1);xlabel('Error Tolerance, tol'); %labeling the x-axis
figure(1);ylabel('Number of Iterations,N'); %labeling the y-axis
%this adds a legend to the graph
legend('Golden Search', 'Succ. Para. Interp.','Newtons Method');

%creating the graph
%this will graph the number of iterations and the error tolerance
%r indicates red for the parabolic and b indicates blue for golden
%8 is the line width
figure(2);loglog(errTolVec, golden, 'b', errTolVec, parabolic, 'r', errTolVec, newtons, 'k' , 'LineWidth', 5);
figure(2);xlabel('Error Tolerance, tol'); %labeling the x-axis
figure(2);ylabel('Number of Iterations,N'); %labeling the y-axis
%this adds a legend to the graph
legend('Golden Search', 'Succ. Para. Interp.', 'Newtons Method');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
% a) The Newtons Method is faster to the minimum for less accurate tolerances. 
% 
% b) When we increase the accuracy threshold, the Newtons Method is faster 
% to the minimum for more accurate tolerances. It does  always converge
% quicker than the parabolic algorithm and golden search. I think the one 
% algorithm changes its convergance speed because its points start to get 
% so close together that it converges faster. 
%
% c)The convergence rates for these algorithms can change due to the
% initial guess point.
