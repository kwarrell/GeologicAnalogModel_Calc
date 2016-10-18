% name of image file, string
filename = 'sampleFTM.jpg';

% width of image parallel to velocity discontinuity, in cm
fieldWidth = 30;

% fieldHeight = height of image perpendicular to velocity discontinuity, in cm
fieldHeight = 30;

% Calculate total area of imput image
fieldArea = fieldWidth*fieldHeight;

% Read in the image
img = imread(filename);

% Since the img is grayscale, we only need one layer
img = img(:,:,1);
[rows, cols] = size(img);

% Initialize output variable that will count all of the "fault" pixels
A = 0;

% Set a threshold pixel value for the program to recognize as "fault"
% Threshold value must be between 0 and 255
threshold = 0.9*255; 

% Loop through each pixel and compare the value to the threshold
for r=1:rows
    for c=1:cols
        temp = img(r,c);
        if temp < threshold
            % If the pixel is darker than the threshold, add 1 to the variable A
            A=A+1;
        end
    end
end

% Calculate the ratio of the image that is faulted
ratio = A/(rows*cols);

% Multiply the ratio by field area to get fault heave area (in cm^2)
heaveArea = ratio*fieldArea;

% Calculate the average heave across the model (in cm)
avgHeave = heaveArea/fieldHeight;
    