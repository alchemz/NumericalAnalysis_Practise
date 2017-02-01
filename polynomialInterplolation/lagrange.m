function pn=lagrange(x,y,xx)
% % Lagrange approx a point-defined function using the Lagrande
% polynomial interpolation %%
% Input
%     x--data points
%     y==data values
%     xx--
%     Output
%     pn -- approximate values at xx
%%    degree of polynomial
n= length(x)-1;

%%return the values
pn=0;
for i=1:(n+1)%% loop for the data points
    cardinal_fun=1;
    for j=1:(n+1)
    if j~=i
      cardinal_fun=cardinal_fun .*(xx-x(j))/(x(i)-x(j));
      end
    end
  pn=pn+y(i)*cardinal_fun;
 end
end
%% end of function %%
