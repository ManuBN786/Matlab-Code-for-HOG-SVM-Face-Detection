%{
This is the implementation of “Matlab tutorial, Face Detection using SVM-Light” uploaded [link]
This is a very basic Face Detector, just to show you how to use SVM-Light for object recognition problems.
%}

clear; close all; clc;

% Add Path to svm library
addpath './svm_mex601/matlab/';
addpath './svm_mex601/bin/';

%pathPos = './dataset/faces/';       % positive example
%pathNeg = './dataset/non-faces/';   % negative example

%% if you want to use your own dataset then following functions could be
% used for cropping the faces, non-face or positive and negative examples
% respectively 
% pathN = './INRIA/'; 
% grab_neg(pathN,pathNeg);          %  cut image into 4 equal sub images 
% flip_all( pathPos, pathNeg );     %  Flip and write images to their corresponding directories

%% Learning part
%if exist('model.mat','file')
    load model;
%else
%    [fpos, fneg] = features(pathPos, pathNeg);  % extract features
%    [ model ] = trainSVM( fpos,fneg );          % train SVM
 %   save model model;
%end

%% Detection 
tSize = [24, 32];
%testImPath = './test images/';
%imlist = dir([testImPath '*.jpg']);
%for j = 1:length(imlist)
    %img = imread([testImPath imlist(j).name]);
   % axis equal; axis tight; axis off;
    %disp(['Processing Image no.',num2str(j)]);
    [filename, pathname] = uigetfile('*.jpg',' Select an Image With A Face ');
     img = imread([pathname,filename]);
    imshow(img); hold on;
    detect(img,model,tSize);
   % saveas(gcf, ['./results/' imlist(j).name], 'jpg');
   % close all;

