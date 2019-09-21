function val= square_Root_Sequence(m,n)
%sets val to always be the square root of m (the intial square root)
val = sqrt(m);

%this is recognizing if the number of terms is even or odd and then decides
%what the first sign will be 
if mod(n,2)==0
    sign= -1;
else
    sign = 1;
end   
%when numbers are even the first will be a minus
%when odd it will be a plus
    

%for loop to do the calculation 
for i = 1:n 
    %this is addint the previous square root to this one and squaring it 
    %this si multiplying it by -1 or +1 depending on the number of
    %terms(odd or even)  
    val = sqrt(m + (((-1)^n) *sign* val)); 
end 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ANSWERS 
%m=13 n=1000 ans= 3.1401
%m=31 n=1000 ans= 5.0902
%m=43 n=1000 ans= 6.0765 
    
    