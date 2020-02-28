clc;
close  all;
clear all;
 
%Select the window:1.Rectangular 2.Bartlett(Triangular) 3.Blackmann 4.Hamming 5.Hanning
 
M=51;
k=input('Enter window choice: ');
 
switch(k)
    
    case 1
        for n=1:1:M-1
               w(n)=1; %Rectangular window
        end
        
    case 2
        for n=1:1:M-1
              w(n)=1-(2*(abs(n-((M-1)/2)))/(M-1)); %Bartlett(triangular)window
        end
        
    case 3
        for n=1:1:M-1
              w(n)=0.42-0.5*cos((2*pi*n)/(M-1))+0.8*(cos(4*pi*n)/(M-1));%Blackmann window 
        end
        
    case 4
        for n=1:1:M-1
            w(n)=0.54-0.46*cos((2*pi*n)/(M-1));%Hamming window
        end
        
    case 5
        for n=1:1:M-1
            w(n)=0.5*(1-cos((2*pi*n)/(M-1)));%Hanning window
        end
end
 
    freqz(w);
