function fit_Polynomial_Series()
N= 10;
%set the x and y data matrices 
xData= linspace(-2*pi, 2*pi, N);
yData= cos(xData)';
for i= 1:N
    x=xData(i);
    %runs through the x data at each x value going up to x^12 and puts them
    %into the A matrix
    A(i,:)= [x^0 x^1 x^2 x^3 x^4 x^5 x^6 x^7 x^8 x^9 x^10 x^11 x^12];
    y=yData(i);
    %set the B matrix to the y value 
    B(i,:)= y;
end 

% psuedo inverse
beta= inv(A'*A)*A'*B;

for i= 1:N
    x=xData(i);
    f(i,1) = 0;
    for j=1:length(beta)
        f(i,1)= f(i,1) + beta(j)*x^(j-1);
    end
end

%residual
r= B-A*beta

%l2 norm of the residual 
l2norm= sqrt(r'*r)

fs = 18; % FontSize
ms = 12; % MarkerSize
plot(xData, yData, 'b','MarkerSize',ms,'LineWidth',6); hold on
plot(xData,f,'r','MarkerSize',ms,'LineWidth',4); 
xlabel('x'); %labeling the x-axis
ylabel('y'); %labeling the y-axis
legend('Data', 'Best Poly Fit');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
%a)Increasing the N value changes the residual by making it decrease.
% when N= 10 the residual has an L2 Norm of 2.7347
% when N= 50 the resudual has an L2 Norm of 5.1501e-04
% when N= 250 the residual is has an L2 Norm of 0.0011
% b)Cos(x) has been written as a polynomial in Calculus. This is a Taylor
% Series. The coefficients are each x value evaluated in the function.
% c) The coefficients when N= 250 are 1, -3 and 3. 
% d) The coefficients are related because 1 appears 3 times and it is
% symmetric because with 3 and -3 appearing on the graph.
