
for i=1:600
    
    %test de l'integ de 0 a pi/2 de sin(x)
    I1(i,1)=abs(1-integ_classique('rectangle',0, pi/2 ,i,'sin(x)'));
    I1(i,2)=abs(1-integ_classique('milieu',0, pi/2 ,i,'sin(x)'));
    I1(i,3)=abs(1-integ_classique('trap',0, pi/2 ,i,'sin(x)'));
    I1(i,4)=abs(1-integ_classique('simpson',0, pi/2 ,i,'sin(x)'));
    
    %test de l'integ de 0 a 1 de 1/(1+x^2)
    I2(i,1)= abs(atan(1)-integ_classique('rectangle',0, 1 ,i,'1/(1+(x^2))'));
    I2(i,2)= abs(atan(1)-integ_classique('milieu',0, 1 ,i,'1/(1+(x^2))'));
    I2(i,3)= abs(atan(1)-integ_classique('trap',0, 1 ,i,'1/(1+(x^2))'));
    I2(i,4)= abs(atan(1)-integ_classique('simpson',0, 1 ,i,'1/(1+(x^2))'));

    %test de l'integ de 0 a 1 de x^3+x
    I3(i,1)= abs(0.75-integ_classique('rectangle',0, 1 ,i,'x^3+x'));
    I3(i,2)= abs(0.75-integ_classique('milieu',0, 1 ,i,'x^3+x'));
    I3(i,3)= abs(0.75-integ_classique('trap',0, 1 ,i,'x^3+x'));
    I3(i,4)= abs(0.75-integ_classique('simpson',0, 1 ,i,'x^3+x'));
end
