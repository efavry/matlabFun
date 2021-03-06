function applications()

%8 points équidistants de [-1;1]
t=-1:2/7:1;

%huit points de Tchebychev
j=0:1:7;
t2=vpa(cos((2*j+1)*pi/(8*2)));

%détermination des composantes et de la chaine des polynomes p7,1 et p7,2
[v,p71]=interpol(7,t,exp(t));
[v2,p72]=interpol(7,t2,exp(t2));

%calcul et affichage de l'erreur
k=[-1:0.01:1];
for i = 1: 1 :length(k)
    f(i) = err(k(i),7,t,v);
    g(i)= err(k(i),7,t2,v2);
end

plot(k,f,'r');
hold on
plot(k,g, 'b');
xlabel('t');
ylabel('e_7_,_1(t) , e_7_,_2(t)');
title(sprintf('Visualisation de l''erreur'));
end
