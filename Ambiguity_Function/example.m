%%
% Auto-ambiguity function
% using examples
fs = 1000; % sampling frequency 1000Hz
T = 1;     % pulse length 1s
signal = ones(1, T * fs); % Rectangular pulse signal
maxDoppler = 100; % maximum Doppler frequency 100 Hz
maxDelay = 0.5;   % maximum time delay 0.5s

[ambiguity, delay, doppler] = computeAmbiguityFunction(signal, fs, maxDoppler, maxDelay);

% plot Auto-ambiguity function
figure;
imagesc(doppler, delay, abs(ambiguity));
xlabel('Doppler frequency shift (Hz)');
ylabel('time delay (s)');
title('Auto-ambiguity function');
colorbar;

%%
% Cross-ambiguity function
% using examples
fs = 1000; % sampling frequency 1000Hz
T = 1;     % pulse length 1s
sig1 = ones(1, T * fs);                       % signal1: rectangular pulse
sig2 = cos(2 * pi * 5 * (0:T * fs - 1) / fs); % signal2: 5Hz cosine wave
maxDoppler = 50; % maximum Doppler frequency 50Hz
maxDelay = 0.5;  % maximum time delay 0.5 s

[CAF, tau, fd] = computeCrossAF(sig1, sig2, fs, maxDoppler, maxDelay,0);

% plot Cross-ambiguity function
figure;
imagesc(fd, tau, abs(CAF));
xlabel('多普勒频移 (Hz)');
ylabel('时间延迟 (s)');
title('互模糊度函数');
colorbar;

