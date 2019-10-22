%% Notes
%% Toutes les routines qui sont appelées dans ce programme viennent du cours de 
%% Andrew Ng et peuvent avoir été adaptées. 
%%
%% les indices commencent a 1
%% les indices matriciels sont 1 -> row et 2 -> col
%% Il semble que la classification d'oiseaux ne se prête pas à la régression linéaire
%% Pour lire fichier .mat en Octave: load MyMatFile.mat right at the Octave prompt

clear ; close all; clc

%% data_train has size 1759x172
train_set = dlmread ('birds-songs-numeric-dataset/train.csv',',',1,0);
test_set = dlmread ('birds-songs-numeric-dataset/test.csv',',',1,0);

name_features = train_set(1,:);
data_train = train_set(2:end,:); % 1759 x 172 sans la ligne des noms de features
data_test = test_set(2:end,:); % 16625 x 172

%% Entrainement du modele
X = data_train(1:40,2:3); % sans la colonne des ids
y = [zeros(1,20), ones(1,20)]'; % assigne étiquette 0 à une espèce et 1 à l'autre
plotData(X,y)

C = 1;
model = svmTrain(X, y, C, @linearKernel, 1e-3, 8); 
%visualizeBoundaryLinear(X, y, model); % not ready yet
