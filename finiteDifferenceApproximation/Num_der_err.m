%declare the function
function Err=Num_der_err(h)

%%Derivative approximation at x=1
Num_der=(-3*exp(x)+4*exp(x+h)-exp(x+2*h))/h/2;

%% Real derivative for f(x)=e^x
Real_der=exp(x)

%%Error
Err=abs(Num_der-Real_der);

end

