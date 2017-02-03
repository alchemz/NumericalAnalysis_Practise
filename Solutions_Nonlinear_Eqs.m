% Nummericial Solutions to Nonlinear Eqs
function c = bisection(a,b, Tol)
step=0;

  if f(a)*f(b)>0
    disp('Wrong input')
    return;
  end

while (abs(a-b)>Tol)
  c=(a+b)/2
  if f(a)*f(c)<0
    b=c; %assign c to b
  else
    a=c; 
  end
  step=step+1;
end
% while 1 endless loop
% need a ending criteria
end

function f=f(x)
f=x.^2-3*cos(x)+exp(x);
end

