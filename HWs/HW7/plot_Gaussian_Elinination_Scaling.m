function plot_Gaussian_Elinination_Scaling()
NVec= 2:1:100;
for i= 1:length(NVec)
    Gaussian(i)= go_Go_Gaussian_Elimination(NVec(i));
end

%creating the graph
%this will graph the operation count vs size of the matrix
%b indicates blue for the line
%5 is the line width
figure(1);loglog(NVec, Gaussian, 'b', 'LineWidth', 5);
figure(1);xlabel('Size of the Matrix, N'); %labeling the x-axis
figure(1);ylabel('Operation Count'); %labeling the y-axis

%creating the graph
%this will graph the operation count vs size of the matrix
%b indicates blue for the line
%5 is the line width
figure(2);plot(NVec, Gaussian, 'b', 'LineWidth', 5);
figure(2);xlabel('Size of the Matrix, N'); %labeling the x-axis
figure(2);ylabel('Operation Count'); %labeling the y-axis
