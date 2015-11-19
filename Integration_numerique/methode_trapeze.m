function [ result ] = methode_trapeze(A, B, N1, f)
%Methode des trapèzes, pas touche !
sum=0;
N=N1-1; %because pas envie de refaire le même calcul a chaque fois
h=double(B-A)/double(N);

fonction = inline(f);

for i=1:N-1
    x=A+(i*h);
    sum=sum+fonction(x);
end
rapport_des_fonctions=(fonction(A)+fonction(B))/2;
result=h*(sum+rapport_des_fonctions);
end

