function [ val ] = evaluation_matricielle(n,a,c,t)
%Fonction �valuation
%==============entr�e   : 
%n : entier naturel repr�sentant le degr� de p
%a : vecteur de n+1 r�el d�signant les coefficients de p dans la base
%consid�r�e
%c : vecteur de n r�el d�signant les centres
%t : vecteur r�el en lequel on �value p
%==============sortie   : 
%val=p(t) ou p(t) est la valeur du polyn�me interpolateur au point t
%==============principe : 
%�valuation de la valeur de p(t) via une un sch�ma de Horner
%si un param�tre est incorrect la fonction retourne une erreur et quitte
%si un param�tre est incorrect la fonction retourne une erreur et quitte
%cette focntion plut�t que r�utiliser evaluation est "omtimis�"
  if( isequal(size(n),size(1))  ) %on v�rifie que n et t sont des entiers (il on la m�me taille que un entier) size(1) est rempla�able par [1,1]
      if ( isequal(length(a),n+1) ) % on verif que a soit un vecteur de taille n+1
          if (  isequal(length(c),n) )
              if(isvector(t))
                  val=zeros(length(t),1);
                  parfor j=1:length(t)
                    %algo de Horner proprement dis
                    c_opt=t(j)-c;
                    nouv_a=zeros(n+1,1);
                    nouv_a(n+1)=a(n+1);
                    for i= n:-1:1
                      nouv_a(i) = a(i) + c_opt(i)*nouv_a(i+1);
                    end
                    val(j)=nouv_a(1);
                  end
              else
                  error('t doit etre un vecteur')
              end
          else
              error('La taille de c est incorrect ! Annulation')
          end
      else
	  error('La taille de a est incorrect ! Annulation')
      end
  else %le test � �chou� on quitte la fonction et on affiche une erreur
      error('Attention n et/ou t doivent �tre des entiers ! Annulation')
  end
end

