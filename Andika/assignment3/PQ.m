

Q=diag([820 1 85 1]);
R=0.001;

[Ko, Mo, E]=lqr(A, B, Q, R);

      
sysCL=ss(A-B*Ko, [B zeros(4,1)], [ zeros(1,4) ;C2],zeros(2,2)); 
[y,t,e ]=initial(sysCL, x0');
n=size(t,4); 

Xdt = [0 0 0.15 0] ; 
Xd = repelem(Xdt,n,1);
X=Xd-e ; 
u=Ko*e';

X1=X(1:end,1);
X3=X(1:end,3);


plot(t,X3); grid on
hold on

plot(t,X1); grid on
xline(2);
yline(0.15, 'b', 'height limit');
yline(0.035, 'r', 'pitch limit');
yline(-0.035,'r','pitch limit');
hold off
legend('theta','X')







