function [ out ] = casteljau( P,t )
%Fonction casteljau
%==============entrée   : 
%P : n+1 points
%t : vecteur de réel \in [0,1]
%==============sortie   : 
%out: ou out est une serie de cell contenant matrice 
%==============principe :
%test
if(isvector(t))%verification que t est bien un vecteur ou un nombre
    supe=t>=0;%preparation des test le vecteur supe sera a 0 sur les lignes ou la condition n'est pas rempli
    infe=t<=1;
    if ( all(supe) && all(infe) )
        if (3==size(P,1)) %verification que ce sont bien des point qui sont contenu dans P
            %recuperation du nombre de point de support
            n=length(P);
            n=n-1;
            %preparing var
            out=createArrays(length(t), [n n]); 
            parfor j=1:length(t)
                out_w=cat(3,P,zeros(3,length(P))); %necessaire
                for p=1:3
                    for r= 0:(n-1)
                        for i= r:(n-1)
                            out_w(p,i+1+1,r+1+1)=(1-t(j))*out_w(p,i+1,r+1)+t(j)*out_w(p,i+1+1,r+1);
                        end
                    end
                end
                out{j}=out_w;
            end
            %celldisp(out);
        else

            error('P incorrect');
        end
    else
        error('T inccorect, les t doivent etre compris entre 1 et 0')
    end
else
    error('T n est pas un vecteur ou un réel')
end
end

