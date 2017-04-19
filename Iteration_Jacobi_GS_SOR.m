%% Problem 1:
%delta = 2;
%theta=2;
%tolerance=1e-5;
%A = [theta,-1,1; 1,theta,-1; -1,1,theta];
%b = [theta;theta;theta];
%

%% Problem 2
%delta=1e-1;
%tolerance=1e-5;
%A=[1+delta,-1,0; -1,2+delta,-1; 0,-1,1+delta];
%b=[-1;-1;2];

%%Problem 3
%tolerance=1e-10;
%A=[10,1,1;1,-10,1;1,1,10];
%b=[1;2;3];
%w=1.9;

%%Problem 4
elfa=10;
n=100;
R=rand(n);
I=eye(n);
b=rand(n,1);
tolerance=1e-5;
A=elfa*eye(n)+rand(n,n);

disp('Jacobi')
x = Jacobi(A, b, tolerance, 20000);


disp('Gauss_Seidel')
x = Gauss_Seidel(A, b, tolerance, 20000);

disp('SOR')
x = SOR(A, b, w,tolerance, 20000);


