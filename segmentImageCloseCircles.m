function [BW] = segmentImageCloseCircles(RGB)

% Threshold image with manual threshold
BW = im2gray(RGB) > 1.275000e+02;

% Close mask
radius = 5;
decomposition = 0;
se = strel('disk', radius, decomposition);
BW = imclose(BW, se);


end

