function [y]=genere_bik(k,t,x,trace)

y=vecteur_b_ik(k,t,x);

if(trace==1)
    for i=t(1):0.001:t(length(t))
        z=vecteur_b_ik(k,t,i);
        plot(i,z);
        hold on;
    end

end