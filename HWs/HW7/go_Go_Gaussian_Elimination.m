%fourth problem for HW7
function OpCount= go_Go_Gaussian_Elimination(N)
A= rand(N,N);%sets a random square matrix NXN
OpCount= 0;%initializes a counter
%makes the leading coeffient 1s
for i=1:N
    lead=A(i,i);
    for j=i:N
        A(i,j)=A(i,j)/lead;
        OpCount= OpCount +1; %adds 1 to the operation count
    end 
    %makes the numbers under the 1s into zeros 
    for j=i+1:N
        coeff=A(j,i);
        for k= i:N
            A(j,k)= A(j,k)-coeff*A(i,k);
            OpCount= OpCount+2;%adds 2 to the operation count
        end 
    end 
end 
%makes the numbers above the ones into zeros
for i=N:-1:2 %the columns
    for j=i-1:-1:1
        A(j,i)=A(j,i)-A(j,i)*A(i,i);
        OpCount=OpCount+2; %add 2 to the operation count 
    end 
end
OpCount
A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS
% a) As the size of the matrix increases the number of operations 
% to get reduced row echelon form increases. This seems to be approximately
% linear. When you graph in the next script you an see that as the size
% increases so do the number of operations to achieve reduced row echelon
% form. 
