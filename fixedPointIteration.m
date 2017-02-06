
% Fixed point algorithm
%1. Initializae X0
%2. Constant g(X) and form Xn+1=g(Xn)
%3. Xn converges to X(f(X)=0)
% from f(x)=0 <=> x=g(x)
x0=2;
%increate the looping times for higher accuracy
for i=1:100
  x1=-(x0.^2+1)/x0
  x0=x1;
end

% Finding the nontrivial root of 
% f(x) = sin(x) - x^2
% using the Simple Fixed-Point Iteration

clear all

x = 1.0     %initial guess
Es = 0.1    %tolerance
Ea = 1000;  %randomly large relative approximate error
xold = x;   
n = 0;      %iteration counter

while Ea > Es
    x = sqrt(sin(x));
    Ea = abs((x-xold)/x)*100;
    xold = x;
    n = n + 1;
end

x  %the root
n   %number of iterations
