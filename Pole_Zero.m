clear all;
clc;
close all;     

%System 1
b=[1];                 %numerator coefficients
c=[1 -1.2732 0.81];    % denominator coefficients

figure;
zplane(b,c);
title('System is stable')

figure;
freqz(b,c);
p= roots(c);
max1= max(real(p));

if max1<1
    disp('system stable')
elseif max1==1
    disp('system critically stable')
else
    disp('system is unstable');
end   
    
%System 2
b=[1];
c=[1 -1.5 0.5];
subplot(223);
figure;
zplane(b,c);
title('system critically stable')
figure;
freqz(b,c)
p= roots(c);
max1= max(real(p));
if max1<1
    disp('system stable')
elseif max1==1
    disp('system critically stable')
else
    disp('system is unstable');
end    

%System 3
b=[1 1];
c=[1 -1 0.5];
figure;
zplane(b,c);
title('System is stable')
figure;
freqz(b,c);
p= roots(c);
max1= max(real(p));
if max1<1
    disp('system stable')
elseif max1==1
    disp('system critically stable')
else
    disp('system is unstable');
end    

%System 4 
b=[3 -4];
c=[1 -3.5 1.5];
figure;
zplane(b,c);
title('System is unstable')
figure;
freqz(b,c);
p= roots(c);
max1= max(real(p));
if max1<1
    disp('system stable')
elseif max1==1
    disp('system critically stable')
else
    disp('system is unstable');
end 

%System 5
b=[1 -5 6];
c=[1 -2.5 1];
figure;
zplane(b,c);
title('System is unstable');
figure;
freqz(b,c);
p= roots(c);
max1= max(real(p));
if max1<1
    disp('system stable')
elseif max1==1
    disp('system critically stable')
else
    disp('system is unstable');
end   

