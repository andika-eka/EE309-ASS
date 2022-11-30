minq =10;
maxq =500;
Q3Arr = minq:5:maxq;


Q3plot = [];
T3plot = [];
xplot = [];
for Q3 = Q3Arr
    Q=diag([5000 1 Q3 Q3/4]);
    R= 0.1;
%     for R = RArr
        [Ko, Mo, E]=lqr(A, B, Q, R);
        
        
        sysCL=ss(A-B*Ko, zeros(4,2), [C(2,:); zeros(1,4)],zeros(2,2)); 
        [y,t,e ]=initial(sysCL, x0');
        n=size(t,4); 
        
        Xdt = [0 0 0.15 0] ; 
        Xd = repelem(Xdt,n,1);
        X=Xd-e ; 
        u=Ko*e';
        
        nt = size(t,1);
        Q3temp = repelem(Q3 ,nt,1);
        Q3plot = [Q3plot ;Q3temp];
       

        T3plot = [T3plot ;t];
        xplot = [xplot; X(1:end,3) ];

end

