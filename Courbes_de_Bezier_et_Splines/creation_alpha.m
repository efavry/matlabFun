function creation_alpha(P0,P1,P2,P3)
%P0 =[8 3];
%P1 =[0 -6];
%P2=[-2 11];
%P3=[8 0];

P=[ P0(1) P1(1) P2(1) P3(1) ; P0(2) P1(2) P2(2) P3(2); 0 0 0 0];
t=0:0.0005:1;
for i=t
p=casteljau_simple( P,i);
plot(p(1),p(2));
hold on;
end

end


