function I = integration_gaussienne(type,nb_points,r)

switch type
    case 'legendre'
        I = methode_legendre(nb_points,r);
    case 'tchebychev'
        r1=strcat('(',r,')*sqrt(1-x^2)');
        I = methode_tchebychev(nb_points,r1);
    otherwise
        error('Mauvais type indique ! Choix possibles : legendre, tchebychev');
end


end