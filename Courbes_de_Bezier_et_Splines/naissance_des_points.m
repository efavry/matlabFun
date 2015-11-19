function fh = naissance_des_points( P,t )
%visualisation des points de controle P0 , ..., Pn et de la naissance des points Pnn(t).
%==============entrée   : 
%P : matrice de n+1 points avec les 3 lignes representants les coordonnées
%t : un réel \in [0,1]
%==============sortie   : 
%rien
%==============principe :
    if(isscalar(t))
        result=casteljau(P,t);
        out3Dmatrix=result{1};
        %out3Dmatrix(:,1,1)
        %outmatrix = out3Dmatrix(:,:,length(P));
        %out = outmatrix(:,length(P));
        fh=figure
        hold on;
        colonnestart=2;
        for i=1:(length(P)-1) %car si on a n+1 points on aura n+1 "plaque" a lire
            %mais la derniere contient le dernier point
            for j=colonnestart:length(P) %colonne
                x=[out3Dmatrix(1,j-1,i),out3Dmatrix(1,j,i)];
                y=[out3Dmatrix(2,j-1,i),out3Dmatrix(2,j,i)];
                % z=[out3Dmatrix(3,j-1,i),out3Dmatrix(3,j,i)];
                plot(x,y)
            end
            colonnestart=colonnestart+1;
       end
       scatter(out3Dmatrix(1,length(P),length(P)),out3Dmatrix(2,length(P),length(P)))
       xlabel('Axe x')
       ylabel('Axe Y')
       title('Naissance du point pnn(t)')
       hold off;
       fh=gcf;
    else
        error('T n est pas un nombre');
    end
end

