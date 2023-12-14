% Interpolation
  t=[0:1:6]';
  x=cos(t)';
  figure(3); stem(t,x);
  tt=[0:0.2:6];
    f1=interp1(t,x,tt,'spline')
    hold on; plot(tt,f1,'-or'); hold off

 figure(3);   
   [x,y]=meshgrid(-1.5:0.5:1.5)
   f=-x.*exp(-x.^2-y.^2);
   mesh(x,y,f)

   [xx,yy]=meshgrid(-1.5:0.1:1.5)
   f2=interp2(x,y,f,xx,yy,'spline');
 figure(4);  
   mesh(xx,yy,f2)