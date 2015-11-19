function y = eval_interpol(point,n,x,v)

for i = 1:1:length(x)-1
    z(i)=x(i);
end    
y = evaluation1(n,v,z,point);
end
