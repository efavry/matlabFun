function y=vecteur_b_ik(k,t,x)

nb_noeuds=1;

if (k<=4)

    for i=2:1:length(t)
       
        if not(t(i)==t(i-1))
            nb_noeuds=nb_noeuds+1;
        end
        
    end
    
    nb_spline = nb_noeuds -1 -k;
    for i=0:1:nb_spline-1
        y(i+1)=b_ik(i,k,t,x);
    end
    
else
    error('Degré des splines trop elevé')
    



end