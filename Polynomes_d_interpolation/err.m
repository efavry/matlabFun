function y=err(i,n,a,v)
y = abs(exp(i)-eval_interpol(i,n,a,v));
end 
