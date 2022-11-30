plot3(T3plot,Q3plot,xplot, 'b.');grid on
xlabel("time");
ylabel("Q3")
zlabel("x");
hold on

% zmin = -0.3;
% zmax = 0.1;

zmin = -0.5;
zmax = 2;
points=[[2,minq,zmax]' [2,maxq,zmax]' , [2 ,maxq,zmin]',[2,minq,zmin]'];
points2=[[0,minq,0]' [0,maxq,0]' , [ max(Tplot),maxq,0]',[ max(Tplot),minq,0]'];
fill3(points(1,:),points(2,:),points(3,:),'g')
fill3(points2(1,:),points2(2,:),points2(3,:),'r')
grid on
alpha(0.8)

hold off