function [ model ] = trainSVM( fpos,fneg )
    SV = loadingV(fpos,fneg); 
    whos SV % loading and labeling each training example
    fprintf('Training SVM..\n');
    T = cell2mat(SV(2,:));
    whos T
    tP = SV(3,:)';
    whos tP
    P = cell2mat(tP); % each row of P correspond to a training example 
    whos P
    model = svmlearn(P, T', '-t -g 0.3 -c 0.5');
    fprintf('done. \n');
end

