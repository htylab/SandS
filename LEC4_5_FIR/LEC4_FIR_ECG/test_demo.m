%% Preliminaries.
clc;clear all;close all;

%% Load data. 
load ecg;
s_n = ecgOriginal;

s_n = s_n(1:end/2);
%% Calculate important parameters.
N = numel(s_n);                 % Number of samples.
Ts = 1/fs;                      % Sampling period [s].
t = 0:Ts:(N-1)*Ts;   % Time vector [s].

figure('Name', 'Input Signal');
subplot(3,1,1);plot(t,s_n,'b');
title('Original (Clean) ECG');
ylabel('Amplitude [\muV]')
pause;

% Noise (AC interference) parameters.
A0 = 250;   % (Peak) amplitude [uV].
fd = 60;    % Frequency [Hz].

%% Contaminate original signal.
% Create noise, i.e. AC interference (Eq. 4).
d_n = A0 * sin(2 * pi * fd* t) ;
% Add the original signal with the noise (Eq, 3).
x_n = s_n + d_n;
subplot(3,1,2);plot(t,x_n,'b');
title('ECG + Noise');
xlabel('Time [s]');
ylabel('Amplitude [\muV]')
pause;

%%  prepare FIR
y_n(1:3)=x_n(1:3);
for n=4:N
    y_n(n)=sum(x_n(n-3:n))/4;
end
ecgFilt1 = y_n;

%% Plots.
subplot(3,1,3);plot(t,ecgFilt1,'b');
title('Filtered ECG (Conventional Method)');
ylabel('Amplitude [\muV]')

