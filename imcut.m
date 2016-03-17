function cropedImage = imcut(po, img)

crop_px = [po(1,1) po(2,1)];
crop_py  = [po(1,2) po(2,2)];

topLeftRow = ceil(min(crop_px));
topLeftCol = ceil(min(crop_py));

bottomRightRow = ceil(max(crop_px));
bottomRightCol = ceil(max(crop_py));

cropedImage = img(topLeftCol:bottomRightCol,topLeftRow:bottomRightRow,:);

end