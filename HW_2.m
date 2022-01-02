%% Mechatronics HW 2 Plots
% Plotting Vout/Vin vs log(frequency)
% Michelle Zhou

close all

%% Low Pass Filter
ratio = [0.88
0.8979591837
0.8775510204
0.7755102041
0.5918367347
0.306122449
0.1489361702
0.1086956522
0
0];

freq = [10
20
50
100
200
500
1000
2000
5000
10000];

% circuit parameters
R = 100000;          % 10k Ohm
C = 0.01*10^-6;     % 0.01 microFarads
omega = 2*pi*freq;

mag_low = 1./sqrt(1+(omega*R*C).^2);        % magnitude of ratio
plot(log10(freq), ratio, 'o','LineWidth', 3)
hold on
plot(log10(freq), mag_low, '^', 'LineWidth', 3)
xlabel('log(frequency) (Hz)')
ylabel('V_{out}/V_{in}')
title('Low Pass Filter: V_{out}/V_{in} vs log(frequency) (Hz)')
legend('Experimental', 'Theoretical')

folderPath = '/Users/michellezhou/Documents/MATLAB/Mechatronics MATLAB';
baseFileName = sprintf('HW2_LowPassFilter.png');
fullFileName = fullfile(folderPath, baseFileName);
saveas(gcf, fullFileName);    

%% High Pass Filter
figure

ratio = [0
0.1428571429
0.306122449
0.5102040816
0.7551020408
0.9387755102
0.9795918367
1
0.9795918367
0.9787234043];

sqrt(1+1/(omega*R*C))
mag_high = 1./sqrt(1+(omega*R*C).^-2);
plot(log10(freq), ratio, 'og', 'LineWidth', 3)           % experimental
hold on
plot(log10(freq), mag_high, '^r', 'LineWidth', 3)         % theoretical
xlabel('log(frequency) (Hz)')
ylabel('V_{out}/V_{in}')
title('High Pass Filter: V_{out}/V_{in} vs log(frequency) (Hz)')
legend('Experimental', 'Theoretical')

folderPath = '/Users/michellezhou/Documents/MATLAB/Mechatronics MATLAB';
baseFileName = sprintf('HW2_HighPassFilter.png');
fullFileName = fullfile(folderPath, baseFileName);
saveas(gcf, fullFileName);    


