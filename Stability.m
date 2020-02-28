clear all;
clc;
close all;     

b = input('Enter numerator coeffecients:');
a = input('Enter denominator coeffecients:');

%System 1
%b=[1];                 %numerator coefficients
%a=[1 -1.2732 0.81];    % denominator coefficients

%System 2
%b=[1];
%c=[1 -1.5 0.5];

%System 3
%b=[1 1];
%c=[1 -1 0.5];

%System 4 
%b=[3 -4];
%c=[1 -3.5 1.5];

%System 5
%b=[1 -5 6];
%c=[1 -2.5 1];

figure;
zplane(b,a);
title('Z plane')

figure;
freqz(b,a);

p= roots(a);
max1= max(real(p));

if max1<1
    disp('system stable')
elseif max1==1
    disp('system critically stable')
else
    disp('system is unstable');
end   
    