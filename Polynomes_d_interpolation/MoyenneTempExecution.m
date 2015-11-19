function [tempsEcoule_evaluation1_moyenne,tempsEcoule_evaluation_moyenne] = MoyenneTempExecution(i)
%MoyenneTempExecution : Evaluation des temps de calculs de evalaution1 et evaluation
%==============entrée   : 
%i : nombre d'iteration
%==============sortie   : 
%tempsEcoule_evaluation1_moyenne
%tempsEcoule_evaluation_moyenne
a=[1,2];
c=[1];
t=0;
n=1;
tempsEcoule_evaluation1_moyenne=0;
tempsEcoule_evaluation_moyenne=0;
    for j=1:i
        timer = tic;
        evaluation1(n,a,c,t);
        tempsEcoule_evaluation1_moyenne=toc(timer)+tempsEcoule_evaluation1_moyenne;

        timer = tic;
        evaluation(n,a,c,t);
        tempsEcoule_evaluation_moyenne=toc(timer)+tempsEcoule_evaluation_moyenne;
    end
   tempsEcoule_evaluation1_moyenne=tempsEcoule_evaluation1_moyenne/i
   tempsEcoule_evaluation_moyenne=tempsEcoule_evaluation_moyenne/i
end

