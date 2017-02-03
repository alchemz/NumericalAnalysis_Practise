%%
%Step1: Input A, B, and Tolerence
%Step2: Test if f(a)*f(b) is positive
%Step3: get the average ofc<- a, b
%Step4: Test if f(c)*f(c) is negative
%Step5: Loop
%%
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

%%For matlab,it requires the subfunction written below
function f=f(x)
f=x.^2-3*cos(x)+exp(x);
end

