% 1D CFD
%Finite Volumes for diffusion problems
%Rohit Suryawanshi

clear all;
%Given Data
k= 1000;
A= 10E-3;
Ta=100;
Tb=500;
L=0.5;
n=5;
dx=L/n;

%Matric creation
T=zeros([n 1]); %temp column vector 
C=zeros(n);     % coefficient- square matric (nxn)
S=zeros([n 1]); % independent source term- column vector

% coefficient calculation
for i=1:n
    if i==1 %Boundary node 1
        aw=0;
        ae=(k*A)/dx;
        Su=(2*k*A*Ta)/dx;
        Sp=-(2*k*A)/dx;

        ap=aw+ae-Sp;
        C(i,i)=ap;
        C(i,i+1)=-ae;
        S(i)=Su;
    elseif i==n %Boundary node 5
        aw=(k*A)/dx;
        ae=0;
        Su=(2*k*A*Tb)/dx;
        Sp=-(2*k*A)/dx;

        ap=aw+ae-Sp;
        C(i,i)=ap;
        C(i,i-1)=-aw;
        S(i)=Su;
    else %rest of the Boundary node 
        aw=(k*A)/dx;
        ae=(k*A)/dx;
        Su=0;
        Sp=0;

        ap=aw+ae-Sp;
        C(i,i)=ap;
        C(i,i+1)=-ae;
        C(i,i-1)=-aw;
        S(i)=Su;
    end
end 

for i=1:n
    x(i)=dx*i
end

T=mldivide(C,S)
%T=C/S; x=A/B 
plot (x,T,'-o')


    


