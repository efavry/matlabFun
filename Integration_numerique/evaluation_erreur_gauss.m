function evaluation_erreur_gauss(r)

syms x;

t=1:1:20;


integrale_reelle = int(r,x,-1,1);

for i=t
   I1(i)=abs(integrale_reelle-integration_gaussienne('legendre',i,r));
   I2(i)=abs(integrale_reelle-integration_gaussienne('tchebychev',i,r));    
end

figure(1);
stem(t,I1,'r');
hold on;
stem(t,I2,'b');



%evaluation 1 : exp(-x^2)+3*x-4*x^3
%evaluation 2 : cos(x)+2*sin(x)-x^2

end