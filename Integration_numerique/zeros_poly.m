function [zeros_calc,sup1,sup2] = zeros_poly( n_max )
%trouve les zeros de la suite des n_max premier poly othogonaux de leg et
%tche
%============================
%n_max : nb de polynome voulu
%zeros(1) zeros de legendre
%zeros(2) zeros de tchebyschev

%generosn les poly
poly=poly_ortho(n_max);


%calculons pour leg
sym_leg=poly(1,:);
%convertissons les polynômes matlab (voir doc matlab)
Pleg = zeros(n_max,n_max);
for i=1:n_max
    Pleg(i,n_max-i+1:n_max) = sym2poly(sym_leg(i));
end

zeros_calc_leg = zeros(n_max-1); %car la cst n'a pas de racine 
for i=2:n_max
    zeros_calc_leg(i-1,1:i-1) = roots(Pleg(i,:));
end
sup1=zeros_calc_leg(n_max-1,:);
%calculons pour tcheby
sym_tche=poly(2,:);
%convertissons les polynômes matlab (voir doc matlab)
Ptche = zeros(n_max,n_max);
for i=1:n_max
    Ptche(i,n_max-i+1:n_max) = sym2poly(sym_tche(i));
end

zeros_calc_tche = zeros(n_max-1); %car la cst n'a pas de racine 
for i=2:n_max
    zeros_calc_tche(i-1,1:i-1) = roots(Ptche(i,:));
end
sup2=zeros_calc_tche(n_max-1,:);

zeros_calc(1,:)=zeros_calc_leg(:);
zeros_calc(2,:)=zeros_calc_tche(:);
end

