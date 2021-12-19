function [mat] = convertToVector(img, target, matrix)
    img = imcrop(img,[276,214,635,505]);
    img = imresize(img, 0.1,'nearest');

    grayImg=rgb2gray(im2);
    level=graythresh(grayImg);
    img=im2bw(grayImg,level);

    vec = img(:);
    vec(end + 1) = target;
    mat = [matrix vec];
end