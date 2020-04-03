%Consider the following 512x 512 grayscale image from a detector, it's
%filename is detectBrightness.png. In the center of the image, there is a
%bright target where pixels all have a valueof atleast 105. All the pixels
%in the dark part of the image are equaalor below 105. In the space below,
%write a Matlab script that will read in the  image and plot it as an imafge
%with the axis off, then ddisplay (in the command window)the percentage of
%pixels that are bright. 
colormap greyscale 
image = imread('detectBrightness.png');

brightSpotsImage = (image >= 105);
brightCount = 0;
for rowIndex = 1:252
    for colIndex = 1:252
        if  image(rowIndex, colIndex) >= 105
            brightCount = brightCount + 1;
        end
    end 
end

percentage = (brightCount / 252) * 100;
disp(num2str(percentage));

imagesc(brightSpotsImage);
axis off;

%%%%OR
colormap greyscale 
image = imread('detectBrightness.png');

brightSpotsImage = (image >= 105);
sumOfBright = sum(brightSpotsImage);

percentage = (sumOfBright / 252) * 100;
disp(num2str(percentage));

imagesc(brightSpotsImage);
axis off;