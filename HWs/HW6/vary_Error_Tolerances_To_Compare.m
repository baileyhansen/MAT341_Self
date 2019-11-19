function vary_Error_Tolerances_To_Compare()
%vector of the error tolerances
errTolVec= [1e-1  1e-2  1e-3  1e-4  1e-5  1e-6  1e-7  1e-8  1e-9  1e-10  1e-11];

%for loop that runs both the previous functions through the vector of error
%tolerances 
    for i= 1: length(errTolVec)
        gradient1(i)= Gradient_Descent_1(errTolVec(i));
        gradient2(i)= Gradient_Descent_2(errTolVec(i));
    end
%creating the graph
%this will graph the number of iterations and the error tolerance
%r indicates red for the gradient2 and b indicates blue for gradient1
%5 is the line width
figure(1);semilogx(errTolVec, gradient1, 'b', errTolVec, gradient2, 'r', 'LineWidth', 5);
figure(1);xlabel('Error Tolerance, tol'); %labeling the x-axis
figure(1);ylabel('Number of Iterations,N'); %labeling the y-axis
%this adds a legend to the graph
legend('Fixed Step', 'Barzilai-Borwein');

%creating the graph
%this will graph the number of iterations and the error tolerance
%r indicates red for the gradient2 and b indicates blue for gradient1
%5 is the line width
figure(2);loglog(errTolVec, gradient1, 'b', errTolVec, gradient2, 'r', 'LineWidth', 5);
figure(2);xlabel('Error Tolerance, tol'); %labeling the x-axis
figure(2);ylabel('Number of Iterations,N'); %labeling the y-axis
%this adds a legend to the graph
legend('Fixed Step', 'Barzilai-Borwein');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
% a)the algorithm that converges to the minimum faster is the Barzilai-
% Borwein function 
% b) If the fixed step function has a gamma=0.5 then the Barzilai-
% Borwein function converges quicker, but the graphical line for the fixed
% step function becomes more linear in the negatice direction
% c)The advantage of using the Barzilai-Borwein function is that it 
% converges more quickly with less iterations than the other.
% d)If I were to modify the code for a different function I would use the
% Barzilai-Borwein function because of how fast it converges to the min.
