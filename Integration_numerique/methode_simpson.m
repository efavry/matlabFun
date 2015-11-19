function [ result ] = methode_simpson(A, B, N1, f)
%Methode des simpson, pas touche !
sum=0;
N=N1-1; %because pas envie de refaire le même calcul a chaque fois
h=double(B-A)/double(N);

fonction = inline(f);

term1=fonction(A); %calc de f(a)
term2=fonction(B); %cal de f(b)

%calc de la somme
for i=1:N-1
    x=A+(i*h);
    if(x>B)
        x=B
    end
    sum=sum+fonction(x);
end
term3=2*sum;
sum=0;
x=0; %securité inutile
%calc de la seconde sommme (4* somme de o a n-1)
for i=0:N-1
    x=A+(i*h)+(h/2);
    if(x>B)
        x=B
    end
    sum=sum+fonction(x);
end
term4=4*sum;

termfinal=term1+term2+term3+term4;
result=(h/6)*termfinal;
end
