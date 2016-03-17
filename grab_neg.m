function [ neg ] = grab_neg(imPath,outImagePath)
i = 1;     

imlist = dir([imPath '*.jpg']);
for j = 1:length(imlist)/4
    im = imread([imPath imlist(j).name]);
    img = imresize(im,0.5);
    [c r l] = size(img);
    % 1
    vo = [1,1;r/2,c/2];
    neg{i}  = crop_neg(vo, img);   
    imwrite(neg{i},[outImagePath 'im000_' num2str(i) '.png'],'png');
    % 2
    vo = [r/2,1;r,c/2];
    neg{i+1} = crop_neg(vo, img);
    imwrite(neg{i+1},[outImagePath 'im000_' num2str(i+1) '.png'],'png');
    % 3
    vo = [r/2,c/2;r,c];
    neg{i+2} = crop_neg(vo, img);
    imwrite(neg{i+2},[outImagePath 'im000_' num2str(i+2) '.png'],'png');
    % 4
    vo = [1,c/2;r/2,c];
    neg{i+3} = crop_neg(vo, img);
    imwrite(neg{i+3},[outImagePath 'im000_' num2str(i+3) '.png'],'png');
    fprintf('fram number %d \n', j);
    
    i = i+4;
    fprintf('fram number %d \n', j);
end

end

