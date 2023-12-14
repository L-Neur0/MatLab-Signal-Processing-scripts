% Shannon WF
  N=64; n=[-N/2:N/2-1]'+eps; t=n*Ts;
  Ts=1; f=[0:N-1]'/N;

  subplot(2,2,1);
    h=sin(pi*t/4)./(pi*t/4).*cos(3*pi*t/4);
    plot(t,h); grid on
    xlabel('Time'); title('MOTHER WAVELET')
  subplot(2,2,2); 
    H=fft(h);
    plot(f,abs(H)); grid on
    xlabel('Frequency'); title('SPECTRUM')
  subplot(2,2,3);  
    t=n*Ts/2;
    h=sin(pi*t/4)./(pi*t/4).*cos(3*pi*t/4);
    plot(t,h); grid on
    xlabel('Time'); title('DILATED WAVELET')
   subplot(2,2,4); 
    H=fft(h);
    plot(f,abs(H)); grid on
    xlabel('Frequency'); title('SPECTRUM')  