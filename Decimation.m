clc;
close all;
clear all;

N=250;
M=2;
Fs=1000;
F1=400;
F2=75;
Fy=Fs/M;
n=0:N-1;

x=2*sin(2*pi*F1*n/Fs)+4*sin(2*pi*F2*n/Fs);
subplot(2,1,1)
stem(x);
title('Input signal');

X=fft(x);
k=0:(N)/2;
Fk=k*Fs/N;
X=X(1:length(Fk));
subplot(2,1,2)
plot(Fk,abs(X));
title('Frequency spectrum of Input Signal');
xlabel('F in Hz');
ylabel('|X(F)|');

y=x([1:M:length(x)]);
figure,
subplot(2,1,1);
stem(y);
title('Down sampled Input Signal');
Y=fft(y);
k1=0:(length(Y))/2;
Fk1=k1*Fs/(M*length(Y));
Y=Y(1:length(Fk1));
subplot(2,1,2);
plot(Fk1,abs(Y));
title('Frequency Spectrum of down sampled signal');
xlabel('F in Hz');
ylabel('|X(F)|');

B=fir1(100,0.5);
z=conv(B,x);
Z=fft(z);
k2=0:(length(Z))/2;
Fk2=k2*Fs/(length(Z));
Z=Z(1:length(Fk2));
figure,
subplot(2,1,1);
stem(z);
title('Filtered Input Signal');
subplot(2,1,2);
plot(Fk2,abs(Z));
title('Frequency Spectrum of filtered signal');
xlabel('F in Hz');
ylabel('|W(F)|');
u=z([1:M:length(z)]);
U=fft(u);
k3=0:(length(U)-1)/2;
Fk3=k3*Fs/(M*length(U));
U=U(1:length(Fk3));
figure,
subplot(2,1,1);
stem(u);
title('down Sampling of filtered signal');
subplot(2,1,2);
plot(Fk3,abs(U));
title('Frequency spectrum decimated signal');
xlabel('F in Hz');
ylabel('|Y(F)|');
figure;
freqz(B,1,256,1000);