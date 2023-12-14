% STFT
  N=100; n=[0:N-1]'; fs=200; Ts=1/fs;
  f1=10; f2=20; f3=40; f4=80;
  x1=cos(2*pi*f1*n*Ts);
  x2=cos(2*pi*f2*n*Ts);
  x3=cos(2*pi*f3*n*Ts);
  x4=cos(2*pi*f4*n*Ts);
  x=[x1; x2; x3; x4]; N1234=length(x); n1234=[0:N1234-1]'
  figure(1); 
    subplot(2,1,1); plot(n1234*Ts,x)
      xlabel('Time [s]'); title('SIGNAL')
    subplot(2,2,3);   
       xx=[x1 x2 x3 x4]; XX=fft(xx)
       mesh(abs(XX))
    subplot(2,2,4); 
       k=[0:N-1]'; f=k/N*fs;
       w=[1 2 3 4];
       xx=[x1 x2 x3 x4]; XX=fft(xx)
       contour(w,f,abs(XX),30); grid on 
       xlabel('Window Index'); ylabel('Frequency [Hz]'); title('STFT')