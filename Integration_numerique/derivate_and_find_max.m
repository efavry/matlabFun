function [ majorant ] = derivate_and_find_max( func,b,a)
%trouver le majorant de la dérivé de la fonction en entrée
%func : la fonction
%b : le coté droit de l'intervalle
%a : le coté gauche de l'intervalle
%n : le degré de derivation
syms x;
f(x) = sym(func)
f_prime(x)=diff(f(x))
M1=fminbnd(f_prime,a,b)
M2=fminbnd(-f_prime,a,b)

if M1>M2
    majorant=M1;
else
    majorant=M2;
end

end