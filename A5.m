% DFT
  N=200; n=[0:N-1]';
  fs=100; Ts=1/fs;
  f1=5.12; f2=41;
  x=cos(2*pi*f1*n*Ts)+0.5*cos(2*pi*f2*n*Ts);
  figure(5)
    subplot(3,1,1)
      plot(n*Ts,x); grid on
      title('SIGNAL'); xlabel('Time [s]')
    subplot(3,1,2)   
      X=fft(x); k=[0:N-1]'; f=k/N*fs;
      stem(f,abs(X)/max(abs(X)))
      grid on;
      title('SPECTRUM'); xlabel('Frequency [Hz]')
      S1=sum(x.^2)
      S2=sum(abs(X).^2)/N
   subplot(3,1,3)  
      xx=ifft(X);
      plot(n*Ts,xx); grid on
      title('RECONSTRUCTED SIGNAL'); xlabel('Time [s]')