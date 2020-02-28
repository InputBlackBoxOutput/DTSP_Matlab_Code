clc;
clear all;
close all;

x = [1,4,3,8,4,3,2,7,6,4];
N =10;
sum_x = 0;
sum_X = 0;

for i = x
    sum_x = sum_x + i*i;
end

X = abs(fft(x))

for j = X
    sum_X = sum_X + j*j;
end

sum_X = sum_X/N;
