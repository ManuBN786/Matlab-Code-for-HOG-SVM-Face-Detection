close all; clc; clear;

inputImagePath = './cache/pos/9/';
outImagePath = './cache/pos/9/';

file_ext = '*.png';

if exist('counter.mat','file')
    load counter;
else
    counter = 1;
end
imlist = dir([inputImagePath file_ext]);
for j = counter+1:length(imlist)
    img = imread([inputImagePath imlist(j).name]);
    imshow(img);
    [X,Y] = ginput(2);
    outIm = imcut([X,Y],img);
    imwrite(outIm,[outImagePath 'im_000' num2str(j) '.png'],'png');
    fprintf('fram number %d \n', j);
    counter = j;
    save counter counter;
end

