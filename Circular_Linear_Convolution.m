clc;
clear all;
close all;
 
x1=input('Enter x1:');
x2=input('Enter x2:');
l1 = length(x1);
l2 = length(x2);
 
if (l1>l2)
    x2 = [(x2),zeros(1, l1-l2)];
    P = zeros(l1,l1);
elseif (l2<l1)
    x1 = [(x1),zeros(1, l1-l2)];
    P = zeros(l2,l2);
end
 
n = l1;
for i= 0:(n-1)
    P( :,i+1) = circshift(x1' , i);
end
 
circular = P * x2'
 
 
l1 = length(x1);
l2 = length(x2);
l = l1 + l2 -1;
 
x1= [x1 ,zeros(1,l-l1)];
x2= [x2 ,zeros(1,l-l2)];
 
linear = zeros(l,l);
 
for i= 0:(l-1)
    P1( :,i+1) = circshift(x1' , i);
end
 
linear = P1 *x2'
 
figure();

%Circular Convolution 
subplot(2,1,1);
stem(circular)
title('Circular Convolution')
xlabel('n');
ylabel('|y(n)|');
 
%Linear Convolution
subplot(2,1,2)
stem(linear)
title('Linear convolution using Circular convolution');
xlabel('n');
ylabel('|y(n)|');


