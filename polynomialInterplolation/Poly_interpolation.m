function pn=Poly_interpolation(x,y,xx)
%input: (x,y) are interpolation points
%output: pn(xx) is the polynomial function with xx as a variable
X=vander(x)
a=inv(X)*y; % solve the vandermonde matrix, inv means matrix inverse
n=length(a)-1;
pn=0;%generate the polynomial function
for i=0:n
    pn=pn+a(i+1)*xx.^(n-i);
end

end
