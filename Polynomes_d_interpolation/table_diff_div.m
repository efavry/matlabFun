function tab = table_diff_div( x,y )
%Fonction evaluation
%==============entrée   : 
%x : vecteur du support d'interpolation de taille n
%y : vecteur des n valeurs réelles prises par f en x_i avec i appartient a [0,n]
%==============sortie   : 
%tab : la table des différences divisées
%==============principe : 
%détermination de la table des différences divisées
  if isequal(size(x),size(y))
    if(not(testDisctinct(x))) %chapo pour Hamza : attention c'est içi que tu avais supprimé le test ce qui impliquerai qu'un vecteur de n point ne serait pas deux a deux distints
      n1=size(x);
      n=n1(2);
      n=n-1;
      for i=0:n
        tab(i+1,1) = y(i+1);
      end
      for j=1:n
        for i=0:(n-j)
             tab(i+1,j+1) = ( tab(i+2,j) - tab(i+1,j) ) / ( x(i+j+1) - x(i+1) ) ;
        end
      end
    else
        error('Les points de support ne sont pas tous distinct')
    end
  else
      error('La taille des deux vecteurs d''entrée n''est pas égale')
  end
end