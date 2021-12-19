function convertImage(frame, folderName, size, name)
    %%frame = skin(frame);
    %%frame = imresize(frame, size,'nearest');
    baseFileName = sprintf('%d.png', name);
    toc
    fullFileName = fullfile(folderName, baseFileName); 
    toc
    imwrite(frame, fullFileName)
    toc
end
