h=0.1;
%%display err1 err2 and order
disp('Error1: ');
Num_der_err(h)
disp('Error2:');
Num_der_err(h/2)
disp('Order:');
log2(Num_der_err(h)/Num_der_err(h/2))
