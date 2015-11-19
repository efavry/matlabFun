function [ result ] = methode_rectangle(A, B, N1, f )
%Methode des rectangle, pas touche !
sum=0;
N=N1-1; %because pas envie de refaire le même calcul a chaque fois
h=double(B-A)/double(N);

%max(abs())
%h_max=2*epsilon/(B-A)

fonction = inline(f);

for i=0:N-1
    x=A+(i*h);
    sum=sum+fonction(x);
end
result=h*sum
end

