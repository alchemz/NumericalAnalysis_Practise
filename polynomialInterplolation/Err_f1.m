n=5; %degree of polynomial

x=(-1:2/n:1)'; %%(n+1) data points
y=1./(1+25*(x.^2)); %Interpolation points

%%points
xx=-1::e-2:1;

%%Values of the polynomial interpolation at points xx
pn_van= Ploy_interpolation(x,y,xx); %polynomial by using Vandermonde matrix
pn_lag=lagrange(x,y,xx); %Lagrangian interpolation

%%Display the errors
disp('Vandermonde Err:')
norm(1./(1+25*(xx.^2))-pn_van)
disp('Lagrange Err')
norm(1./(1+25*(xx.^2))-pn_lag)

%%end of file
