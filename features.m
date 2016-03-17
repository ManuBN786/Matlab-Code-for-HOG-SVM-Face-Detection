function [fpos, fneg] = features(pathPos,pathNeg)
    % extract features for positive examples
    imlist = dir([pathPos '*.png']);
    for i = 1:length(imlist)
        im = imread([pathPos imlist(i).name]);
        fpos{i} = HOG(double(im));
    end
    % extract features for negative examples
    imlist = dir([pathNeg '*.png']);
    for i = 1:length(imlist)
        im = imread([pathNeg imlist(i).name]);
        fneg{i} = HOG(double(im));
    end

end
