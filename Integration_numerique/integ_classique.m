function [ result ] =  integ_classique(type, A, B, N1, f )
% ype de l'integration au choix : méthodes des rectangle des milieux des
% trapèzes et de simpson avec N sous intervalles tels que avec h(float)=(B-A)/(int)N
%A réels
%B réels
%A<B
%f la focntion
    if (isscalar(A))  && (isscalar(B))  && (isscalar(N1))
        N=uint8(N1); %conversion to a real integer
        if (isinteger(N))%useless test
            %whos h
            epsilon=10^-6; %adjust the precision de levaluation %obsolete
            switch type
                case 'rectangle'
                    result= methode_rectangle(A,B,N1,f);
                case 'milieu'
                    result= methode_milieux(A,B,N1,f);
                case 'trap'
                    result= methode_trapeze(A,B,N1,f);
                case 'simpson'
                    result= methode_simpson(A,B,N1,f);
                otherwise
                    error('Mauvais type indiqué : Ils sont au choix parmis : rectangle milieu trap simpson');
            end
        else
            error('Erreur Magique');    %si on est içi matlab est malade
        end
    else
        error('Mauvais parametre d entree');
    end
end

