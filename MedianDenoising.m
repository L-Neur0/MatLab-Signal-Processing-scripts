% Zpracovani obrazu
  clear
  k1=menu('IMAGE','real','simulated')
  if k1==1
    load BRAIN_MRI
    x=double(A); x=x/max(x(:));
  elseif k1==2
    z=abs(cos(2*pi*0.005*[1:512]));  
    x=z'*z;
  end
   
    figure(5)
      imshow(x,[])
    figure(6)  
      R=double(rand(512)>0.99);
      imshow(R,[])
    figure(7)    
      xr=x+R;
       imshow(xr,[])
    figure(8) 
      y=xr(:,300);
      subplot(2,1,1)
         plot(y); v=axis;
      subplot(2,1,2)   
         y1=medfilt1(y,5);
         plot(y1); axis(v)
     figure(9)    
        XR=medfilt2(xr,[5,5])
        imshow(XR,[])

