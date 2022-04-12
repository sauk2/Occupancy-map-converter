clc
clear

addpath('images')

%Load and crop image
img = imread('circleMap.pgm');
[imgCropped, cropCorners] = imcrop(img);

%%Parameters
resizeParam = 1;
occupancyParam = 50;

%Resize image
imgResized = imresize(imgCropped, resizeParam);

%Normalize image
imgNorm = double(imgResized)/255;
imgOccupancy = 1 - imgNorm;

%Convert to occupancy map
map = occupancyMap(imgOccupancy, occupancyParam);
show(map)

%Save map
save('workspace\mapOccupancy', 'map')