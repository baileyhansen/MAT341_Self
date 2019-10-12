%code that finds the LCM of two numbers you input 
function lcm_val = calculate_LCM(x,y)
n = 1; 
%while loop so it runs thought n values until n*x mod y =0
while mod(n*x, y)~=0
    %increases the value of n by 1
    n= n+1;
end 
%prints the lcm value found 
lcm_val= n*x 