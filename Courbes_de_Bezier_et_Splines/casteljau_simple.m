function [ out ] = casteljau_simple( P,t )
%Fonction casteljau
%==============entrée   : 
%P : n+1 points
%t : un réel \in [0,1]
%==============sortie   : 
%out: ou out est une matrice 
%==============principe :
    if(isscalar(t))
        result=casteljau(P,t);
        out3Dmatrix=result{1};
        outmatrix = out3Dmatrix(:,:,length(P));
        out = outmatrix(:,length(P));
    else
        error('T n est pas un nombre');
    end
end