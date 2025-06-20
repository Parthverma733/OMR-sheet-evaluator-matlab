function [BW] = createMaskCorrectAnswer(RGB)

%------------------------------------------------------


% Convert RGB image to lab color space
I = rgb2lab(RGB);

% Define thresholds for channel 1 
channel1Min = 0.000;
channel1Max = 48.810;

% Define thresholds for channel 2 
channel2Min = -4.133;
channel2Max = 80.092;

% Define thresholds for channel 3 
channel3Min = -74.679;
channel3Max = -27.169;

% Create mask based on channels thresholds
sliderBW = (I(:,:,1) >= channel1Min )&(I(:,:,1) <= channel1Max)&(I(:,:,2) >= channel2Min )&(I(:,:,2) <= channel2Max)&(I(:,:,3) >= channel3Min )&(I(:,:,3) <= channel3Max);
BW = sliderBW;



end
