function [vect_reel,poly]=interpol(n,x,y)

syms X;
vect_reel=zeros(n+1,1);
table=table_diff_div(x,y);

temp=1;
poly=0;

for i = 1 : 1 : n+1
    vect_reel(i) = vpa(table(1,i));
    poly = poly + vpa(vect_reel(i))*temp;
    temp = temp*(X-x(i));
end

end
