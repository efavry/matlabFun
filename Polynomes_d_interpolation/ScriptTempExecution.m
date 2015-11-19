a=[1,2];
c=[1];
t=0;
n=1;

timer = tic;
evaluation1(n,a,c,t);
tempsEcoule_evaluation1=toc(timer)

timer = tic;
evaluation(n,a,c,t);
tempsEcoule_evaluation=toc(timer)