function y = b_ik (a,k,t,x)

nb_noeuds=1;
t2(1)=t(1);
for i=2:1:length(t)
   if not(t(i)==t(i-1))
       t2(nb_noeuds+1)=t(i);
       nb_noeuds=nb_noeuds+1;
   end       
end


if (k==0)
    if (x>=t2(a+1))
        if (x<t2(a+1+1))
            y=1;
        else
            y=0;
        end
    else
        y=0;
    end
else
    y=omega(a,k,t2,x).*b_ik(a,k-1,t2,x) + (1-omega(a+1,k,t2,x)).*b_ik(a+1,k-1,t2,x);          
end


end