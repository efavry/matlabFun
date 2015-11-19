function val = evaluation1(n,a,c,t)
%Fonction evaluation1
%==============entrée   : 
%n : entier naturel représentant le dégrée de p
%a : vecteur de n+1 réel désignant les coefficients de p dans la base
%considérée
%c : vecteur de n réel désignant les centres
%t : réel en lequel on évalue p
%==============sortie   : 
%val=p(t) ou p(t) est la valeur du polynôme interpolateur au
%point t
%==============principe : 
%évaluation de la valeur de p(t) via une manière intuitive 
%si un parametre est incorect la fonction retourne une erreur et quitte
if( isequal(size(n),size(t),size(1))  ) %on vérifie que n et t sont des entiers (il on la même taille que un entier) size(1) est remplaçable par [1,1]
    if ( isequal(length(a),n+1) ) % on verif que a soit un vecteur de taille n+1
        if ( isequal(length(c),n) )
            res_produit = 1; %cas trivial du produit
            res_somme = 0;
            for i= 0:n
                for j= 1:i
                    inter = t-c(j);
                    res_produit=res_produit*inter;
                end
                res_somme= a(i+1)*res_produit + res_somme;%i+1 car matlab commence a 1 (WTF !?!)
                
                res_produit=1;
            end
           % display('La fonction a été exécuté sans rencontrer d''erreur')
            val=res_somme; %retour du résultat attendu
        else
            error('La taille de c est incorrect ! Annulation')
        end
    else
        error('La taille de a est incorrect ! Annulation')
    end
else %le test à échoué on quitte la fonction et on affiche une erreur
    error('Attention n et/ou t doivent être des entiers ! Annulation')
end
end
