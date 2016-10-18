% the input fault trace map image filename
% black pixels indicate fault, white pixels indicate no fault
filename = 'I90_1cm.jpg';

% height of field in image (perpendicular to velocity discontinuity), in cm
fieldHeight = 30;

% spacing of calculations, in cm
spacing = .5; %e.g., calculates the percent heave every 0.5 cm

% Read in the image
img = imread(filename);
[r,c,h] = size(img);

% Check if the number of rows of pixels is divisible by the field height
rowHeight = floor(r/(fieldHeight/spacing));
finalR = rowHeight*fieldHeight/spacing;
rDiff = r-finalR;

% Crop the image so its height is divisible by actual height
if rDiff == 0
    % If the height of the image is divisible by its field height
    crop = img(1:finalR, 1:c, 1);
else
    % If the image height is not divisible by the field height
    crop = img(floor(rDiff/2):(finalR+floor(rDiff/2)-1), 1:c, 1);
end

% Initialize x and y
% x is the distance along N-S cross section used to graph avgHeave
% y is the average heave N to S on the model
x = transpose(linspace(spacing, fieldHeight, fieldHeight/spacing));
y = ones(fieldHeight/spacing,1);

% Loop through the rows and average the color values
for b=1:(fieldHeight/spacing)
    avg = sum(sum(crop(((b-1)*rowHeight+1):(b*rowHeight),:)))/(rowHeight*c);
    y(b,1) = (255-avg)/255;
end

% Plot the results
plot(x,y*100,'r','LineWidth',2)
axis([0,fieldHeight,0,100])
xlabel('Distance along analog model, cm')
ylabel('Faulting intensity, percent')
