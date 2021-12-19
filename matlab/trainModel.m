function [net] = trainModel(fileName)
    rawData = csvread(fileName,0, 0);
    labels = rawData(3265,:);
    targets=dummyvar(labels);
    targets = targets';
    inputs = rawData(1:end - 1,:);
    net = patternnet (100); 
    net = train(net, inputs, targets);

end