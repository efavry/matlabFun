function [vect_reel,poly_formel]=interpol_exacte(n,x,y)

syms X poly_formel;
vect_reel=zeros(n,1);
table=table_diff_div(x,y);

temp = 1;
poly_formel=0;

for i = 1 : 1 : n
    vect_reel(i) = table(1,i);
    poly_formel = poly_formel + vect_reel(i)*temp;
    temp = temp*(X-x(i));
end

end
