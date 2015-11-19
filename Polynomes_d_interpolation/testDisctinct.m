function test = testDisctinct(v)
%Fonction testDisctinct : verification que v est compos� de valeurs disctincte.
%==============entr�e   : 
%v : vecteur a tester
%==============sortie   : 
%test : reponse 1 si les point sont daistinct,0 sinon
%==============principe : 
%verification que v est compos� de valeurs disctincte.

    n1=size(v); %r�cuperation de la taille du vecteur v.
    n=n1(2);
    %n=n;
    for i=1:n
        for j=1:n
           if not(isequal(j,i)) %pour viter de boucler si le resultat est d�j� faux
                if isequal(v(i),v(j))
                    test=0;
                    return;
                end
            end
        end
    end
    test=1;
    return;
end