%% Team 20 - Avalanche Detection
% Nov 12th, algorithm demo
% Louis Rosenblum, Cayden Seiler, Khristian Jones
<<<<<<< Updated upstream
%% Sensor and Grid locations

=======
%% Noise for Waveform
fileReader = dsp.AudioFileReader('Avy.wav');
writer = audioDeviceWriter('SampleRate', fileReader.SampleRate);
scope = dsp.TimeScope(1,...
                      fileReader.SampleRate, ...
                      'TimeSpanOverrunAction','Scroll', ...
                      'TimeSpan',6.5, ...
                      'BufferLength',1.5e6, ...
                      'YLimits',[-1 1],...
                      'ShowGrid',true,...
                      'ShowLegend',true);
%% Sensor placement
>>>>>>> Stashed changes



%% Generate random temps/humidity/air pressure



%% Calc speed of sound


%% Randomly pick origin


%% Calculate distance to sensor



%% Generate phase delays



<<<<<<< Updated upstream
%% 4 copies of .wav file with delays



%% Add noise 


=======
%% Calculate distance to sensors

%Distance from origin to sensors
d0 = distance(s0,origin) 
d1 = distance(s1,origin)
d2 = distance(s2,origin)
d3 = distance(s3,origin)

dist1 = distance(s0,grid{90,30})
delta1 = d1 - d0
delta2 = d2 - d0
delta3 = d3 - d0
>>>>>>> Stashed changes


<<<<<<< Updated upstream
%% The meat and potatoes of this bad boi
%  Calculate origin of signal



%% Plot sensors, grid, predicted origin, actual origin




%% Print if matching. If not how far off is it.
=======

while ~isDone(fileReader)
    wave1 = fileReader();
    %wave2 = fileReader();
    %wave3 = fileReader();
    %wave4 = fileReader();
    wc1 = wave1 + (2e-1/4) * randn(1024,1);
    %wc2 = wave2 + (1e-2/4) * randn(1024,1);
    %wc3 = wave3 + (1e-2/4) * randn(1024,1);
    %wc4 = wave4 + (1e-2/4) * randn(1024,1);
    writer(wc1)
    scope([wc1, wave1]);
end
release(fileReader)
release(scope)
release(writer)

%% Distance function definition

function dist = distance(p1,p2)
    a = p2(1);
    b = p2(2);
    dist = sqrt(abs((p2(1) - p1(1))^2 + (p2(2)-p1(2))^2));
end
>>>>>>> Stashed changes