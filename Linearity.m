clc;
clear all;
close all;

x1 = [1,-2,-2,4];
x2 = [0,2,4,1];

a = 2;
b = 5;

x = a * x1 + b * x2;
LHS = abs(fft(x));

X1 = fft(x1);
X2 = fft(x2);
RHS = abs(a * X1 + b * X2);
