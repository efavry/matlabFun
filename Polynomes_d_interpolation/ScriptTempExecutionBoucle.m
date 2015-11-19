%POUBELLE
tp1=0;
tp2=0;
for i=1:2000
   [tempsEcoule_evaluation1_moyenne,tempsEcoule_evaluation_moyenne] = MoyenneTempExecution(2000);
   tp1=tempsEcoule_evaluation1_moyenne+tp1;
   tp2=tempsEcoule_evaluation_moyenne+tp2;
end
tp1=tp1/2000
tp2=tp1/2000
