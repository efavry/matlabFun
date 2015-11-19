function I = methode_legendre(nb_points,r)

n=nb_points-1;

[coefs,~]=coefficients(n);
[support_leg,~] = support_integration(n);

fonction = inline(r);

I=0;

for i=1:length(coefs)
    I = I + coefs(i)*fonction(support_leg(i));    
end

end