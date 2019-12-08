function fit_Sine_Series()
N=500;
M=40;
xData=linspace(-pi,pi,N);
yData=( (0.25*xData.^2).*cos(xData).^4.*sin(xData).^7)';

for i= 1:length(xData)
    for j= 1:M
        %makes the matrix
        %i indicates the row number and which x 
        %j indicates the column number and is the coefficient
        A(i,j)= sin(xData(i)*j);
    end 
end 
%pseudo inverse
beta= inv(A'*A)*A'*yData;
SUM=0; 
for i= 1:length(xData)
    for j=1: M
        %creates the sum of each doing 
        SUM= SUM +sin(beta(j)*xData(i));
    end 
end 
l2norm= sqrt(beta'*beta);
xData
yData
beta
l2norm

fs = 18; % FontSize
ms = 12; % MarkerSize
plot(xData,yData,'r','MarkerSize',ms,'LineWidth',6);
xlabel('x'); %labeling the x-axis
ylabel('y'); %labeling the y-axis
%this adds a legend to the graph
legend('Data', 'Best Sine Series Fit');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSEWRS
%a)Increasing M changes the residual by slightly increasing the L2 Norm
% when M= 5 the residual has an L2 Norm of 0.0160
% when M= 10 the residual has an L2 Norm of 0.0168
% when M= 20 the residual has an L2 Norm of 0.0168
% when M= 40 the residual has an L2 Norm of 0.0168
% b)This process is called the Fourier Sine Series
