% attributes = logical(attribute_1);
weighted_attributes = zeros (418,1);
for i = 1:418
    weighted_attributes(i,1) = (sum((attributes(i,1:3) .* 0.4)) || (sum(attributes(i,4:6) .* 0.2)) || (sum(attributes(i,7:9) .* 0.1)) || (sum(attributes(i,10:12) .* 0.1)) && (sum(attributes(i,13:14).* 0.4)) || (sum(attributes(i,15:16) .* 0.3)) || (sum(attributes(i,17:18) .* 0.1)) || mean(sum(attributes(i,19:20).*0.1))) + rand(1);
end
net = feedforwardnet();
layers = [
    imageInputLayer([418 1])
    convolution2dLayer(3,16,'Padding',1)
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(3,32,'Padding',1)
    batchNormalizationLayer
    reluLayer
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer];
% net.trainFcn = 'trainlm';
% net.Inputs{1}.size = 418;
% net.outputs{2}
[y,tr] = train(net,outcomes,weighted_attributes);
% [y,tr] = train(net,a,b);