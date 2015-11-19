function roter_alpha(angle)
P0 =[8 3];
P1 =[0 -6];
P2=[0 9];
P3=[8 0];
C=[P0(1)/2 P0(2)/2];

A=cos(angle)*(P0(1)-C(1))-(P0(2)-C(2))*sin(angle)+C(1);
B=cos(angle)*(P1(1)-C(1))-(P1(2)-C(2))*sin(angle)+C(1);
E=cos(angle)*(P2(1)-C(1))-(P2(2)-C(2))*sin(angle)+C(1);
D=cos(angle)*(P3(1)-C(1))-(P3(2)-C(2))*sin(angle)+C(1);

P0(2)=(P0(2)-C(2))*cos(angle)+(P0(1)-C(1))*sin(angle)+C(2);
P1(2)=(P1(2)-C(2))*cos(angle)+(P1(1)-C(1))*sin(angle)+C(2);
P2(2)=(P2(2)-C(2))*cos(angle)+(P2(1)-C(1))*sin(angle)+C(2);
P3(2)=(P3(2)-C(2))*cos(angle)+(P3(1)-C(1))*sin(angle)+C(2);

P0(1)=A;
P1(1)=B;
P2(1)=E;
P3(1)=D;

creation_alpha(P0,P1,P2,P3);


end

