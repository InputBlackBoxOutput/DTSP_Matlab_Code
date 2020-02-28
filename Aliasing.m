
clc;
clear all;
close all;

F1 = 1000;
F2 = 6000;
Fs = 5000;
n = 0:99;

x1 = 0.5 * sin((2 * pi * F1 * n )/Fs);
x2 = 0.5 * sin((2 * pi * F2 * n )/Fs);

figure;

subplot(211);
stem(n,x1);
title('1kHz Signal sampled at 5kHz');
xlabel('n');
ylabel('x1');

subplot(212);
stem(n,x2);
title('6kHz Signal sampled at 5kHz');
xlabel('n');
ylabel('x2');
