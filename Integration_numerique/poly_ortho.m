function P = poly_ortho( n_max )
%Construis la la suite des n_max premier poly othogonaux : P(1) ceux de
%legendre et P(2) ceux de tchebyschev
%============================
%n_max : nb de polynome voulu
%P(1) poly de legendre
%P(2) poly de tchebyschev

if isscalar(n_max)
    if (n_max > (-1))
        %calculons le compteur
        n_max=n_max-2;
        %creons la symbolique
        syms x;

        Leg(1) = 1*x/x;
        Leg(2) = x; 
        for n = 1:n_max
            Leg(n+2) = expand(x*(2*n+1)*Leg(n+1)/(n+1)-n*Leg(n)/(n+1));
        end

        Tche(1) = 1*x/x;
        Tche(2) = x; 
        for n = 1:n_max
            Tche(n+2) = expand(2*x*Tche(n+1)-Tche(n));
        end
        P(1,:)=Leg(:);
        P(2,:)=Tche(:);
    else
        error('n_max doit etre positif');
    end
   
else
    error('n_max n est pas un nombre');
end
end

