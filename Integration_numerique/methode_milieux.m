function [ result ] = methode_milieux(A, B, N1, f )
%Methode des milieux, pas touche !
sum=0;
N=N1-1; %because pas envie de refaire le même calcul a chaque fois
h=double(B-A)/double(N);

fonction = inline(f);

for i=0:N-1
    x=A+i*h+(h/2);
    sum=sum+fonction(x);
end
result=h*sum;
end