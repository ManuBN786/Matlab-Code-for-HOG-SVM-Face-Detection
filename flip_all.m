function flip_all(pathPos, pathNeg)


% positive images
imlist = dir([pathPos '*.png']);
for i = 1:length(imlist)
    im = imread([pathPos imlist(i).name]);
    I = flipdim(im ,2);
    imwrite(I,[pathPos 'fliped_' imlist(i).name]);
end 

% neg images
imlist = dir([pathNeg '*.png']);
for i = 1:length(imlist)
    im = imread([pathNeg imlist(i).name]);
    I = flipdim(im ,2);
    imwrite(I,[pathNeg 'fliped_' imlist(i).name]);
end 

end