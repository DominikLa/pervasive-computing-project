function getAndShuffleCsvData(folderName)
    files = dir(folderName);
    n = {files.name};
    
    mat = [];
    
    for i = 1:length(files)
        fileName = string(n(i));
        if endsWith(fileName, '.csv');
            data = readmatrix(strcat('./', folderName, '/', fileName));
            mat = [mat data];
        end
    end
 
    cols = size(mat, 2);
    p = randperm(cols);
    mat = mat(:,p);
    writematrix(mat, 'finalData.csv');
end


    
