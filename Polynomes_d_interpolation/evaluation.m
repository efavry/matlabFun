function [ val,nouv_a,nouv_c ] = evaluation(n,a,c,t)
%Fonction évaluation
%==============entrée   : 
%n : entier naturel représentant le degré de p
%a : vecteur de n+1 réel désignant les coefficients de p dans la base
%considérée
%c : vecteur de n réel désignant les centres
%t : réel en lequel on évalue p
%==============sortie   : 
%val=p(t) ou p(t) est la valeur du polynôme interpolateur au
%point t
%==============principe : 
%évaluation de la valeur de p(t) via une un schéma de Horner
%si un paramètre est incorrect la fonction retourne une erreur et quitte
  if( isequal(size(n),size(t),size(1))  ) %on vérifie que n et t sont des entiers (il on la même taille que un entier) size(1) est remplaçable par [1,1]
      if ( isequal(length(a),n+1) ) % on verif que a soit un vecteur de taille n+1
	  if ( isequal(length(c),n) )
	      %algo de Horner proprement dis
	      nouv_a(n+1)=a(n+1);
	      
	      for i= n:-1:1
		  nouv_a(i) = a(i) + (t-c(i))*nouv_a(i+1);
	      end
	      %création de nouv_c
	      nouv_c=zeros(1,n);
	      nouv_c(1)=t;
	      for k= 1:n-1
		  nouv_c(k+1)=c(k+1);
	      end
	      display('La fonction a été exécuté sans rencontrer d''erreur')
	      val=nouv_a(1); %retour du résultat attendu
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

