%% Title: Tuned Brightness Controlled Single-Scale Retinex

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen and Ghazali Sulong. 
% "A new algorithm for improving the low contrast of computed tomography images using tuned brightness controlled single?scale Retinex". 
% Scanning, vol. 37, no. 2, (2015): pp. 116-125. DOI: 10.1002/sca.21187

%% INPUTS
% x --> is a given low-contrast image
% beta -- > is a tuning constant whose value is larger than zero.

%% OUTPUT
% out --> a contrast-enhanced image.


%% Starting implementation %%
clear all; close all; clc

x=imread('LowContrastCT.jpg');
figure; imshow(x)

beta=6;
tic; out = TBCSSR(x, beta); toc;
figure; imshow(out);title('TBCSSR')
% imwrite(out,'out_TBCSSR_B6.jpg')