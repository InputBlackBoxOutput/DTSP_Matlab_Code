%bilineartf
clc;
close all;
clear all;

w=-3.1:.1:3.1;
T=1;
for i=1:length(w)
    omega(i)=(2/T)*tan((w(i)/2));
end

r=[.5 1 1.5];

for k=1:length(r)
    for i=1:length(w)
        
    s(k,i)=2*((r(k)*exp(1i*w(i))-1)/(r(k)*exp(1i*w(i))+1));
    end
end

subplot(3,1,1)
plot(omega,w);
subplot(3,1,2)
plot((s),w);

r=[.5 1 1.5];
w=-pi:.1:pi;
for k=1:length(r)
    for i=1:length(w)
        
    s1(k,i)=r(k)*exp(1i*w(i));
    end
end
    
    subplot(3,1,3)
    plot(s1(1,:),'b');
    hold on
    plot(s1(2,:),'g');
    hold on
    plot(s1(3,:),'r');