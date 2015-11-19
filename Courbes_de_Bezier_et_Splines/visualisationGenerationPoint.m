function visualisationGenerationPoint( P,t)
%Fonction de visualisation de la generation d'un point P^n_n
%==============entrée   : 
%P : n+1 points
%t : réel \in [0,1] en lequel sera evalué
%==============principe :
if(isscalar(t))%verification que t est bien un nombre
result=casteljau( P,t ); %les test se trouvans dedans evite de se poser des questions dans la suite de la fonction
todraw=result{1}
todraw(:,length(P),4)
else
    error('t n est pas un nombre')
end
end

