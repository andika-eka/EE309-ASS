minq =3000;
maxq =8000;
Q1Arr = minq:50:maxq;


Q1plot = [];

T1plot = [];
Thetaplot = [];
for Q1 = Q1Arr
    Q=diag([Q1 Q1/5 50 1]);
    R= 0.001;

        [Ko, Mo, E]=lqr(A, B, Q, R);
     
        
        sysCL=ss(A-B*Ko, zeros(4,2), [C(2,:); zeros(1,4)],zeros(2,2)); 
        [y,t,e ]=initial(sysCL, x0');
        n=size(t,4); 
        
        Xdt = [0 0 0.15 0] ; 
        Xd = repelem(Xdt,n,1);
        X=Xd-e ; 
        u=Ko*e';
        
        nt = size(t,1);
        Q1temp = repelem(Q1 ,nt,1);
        Q1plot = [Q1plot ;Q1temp];
       

        T1plot = [T1plot ;t];
        Thetaplot = [Thetaplot; X(1:end,1) ];

end

