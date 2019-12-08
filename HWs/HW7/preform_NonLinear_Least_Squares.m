%third for the HW7
function preform_NonLinear_Least_Squares()
N=2500
data= give_NonLinear_Least_Squares_Data(N);%calls other script
xData= data(:,1);
yData= data(:,2);
%set the beta values 
B0= 1;
B1= 0.5;
B2= 0.3;
%initialize the error and tolerance
err= 1;
tol= 1e-5;
while err > tol
    %calculate the l2norm with the residuals found 
    for i= 1:N
        x= xData(i);
        Expy= exp(-(x-B1)^2/(2*B2^2));
        J(i,1)= Expy;
        J(i,2)= B0* ((x-B1)/B2^2)* Expy;
        J(i,3)= B0* ((x-B1)^2/B2^3)*Expy;
    end 
    for i=1:N
        x=xData(i);
        y=yData(i);
        Expy= exp(-(x-B1)^2/(2*B2^2));
        f(i,1)= y-(B0*Expy);
    end
    %psuedo inverse code 
    PI= inv(J'*J)*(J')*f;
    nextB0= B0+ PI(1);
    nextB1= B1+ PI(2);
    nextB2= B2+ PI(3);
    B= [B0 B1 B2];
    nextB= [nextB0 nextB1 nextB2];
    err= sqrt((nextB-B)*(nextB-B)')
    %set the old betas to the next betas 
    B0= nextB0;
    B1= nextB1;
    B2= nextB2;
end 
for i=1:N
        x=xData(i);
        Expy= exp(-(x-B1)^2/(2*B2^2));
        f(i,1)=(B0*Expy);
end
B0
B1
B2
%create a graph
fs = 18; % FontSize
ms = 20; % MarkerSize
plot(xData,f,'r','MarkerSize',ms,'LineWidth',5);
xlabel('x'); %labeling the x-axis
ylabel('y'); %labeling the y-axis
%this adds a legend to the graph
legend('Data', 'Model Fit');
