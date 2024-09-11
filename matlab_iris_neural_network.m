clear;
close all;
clc;

%Insert the plant data as a cell array
data_raw = {5.1,3.5,1.4,0.2,'Iris-setosa';
            4.9,3.0,1.4,0.2,'Iris-setosa';
            4.7,3.2,1.3,0.2,'Iris-setosa';
            4.6,3.1,1.5,0.2,'Iris-setosa';
            5.0,3.6,1.4,0.2,'Iris-setosa';
            5.4,3.9,1.7,0.4,'Iris-setosa';
            4.6,3.4,1.4,0.3,'Iris-setosa';
            5.0,3.4,1.5,0.2,'Iris-setosa';
            4.4,2.9,1.4,0.2,'Iris-setosa';
            4.9,3.1,1.5,0.1,'Iris-setosa';
            5.4,3.7,1.5,0.2,'Iris-setosa';
            4.8,3.4,1.6,0.2,'Iris-setosa';
            4.8,3.0,1.4,0.1,'Iris-setosa';
            4.3,3.0,1.1,0.1,'Iris-setosa';
            5.8,4.0,1.2,0.2,'Iris-setosa';
            5.7,4.4,1.5,0.4,'Iris-setosa';
            5.4,3.9,1.3,0.4,'Iris-setosa';
            5.1,3.5,1.4,0.3,'Iris-setosa';
            5.7,3.8,1.7,0.3,'Iris-setosa';
            5.1,3.8,1.5,0.3,'Iris-setosa';
            5.4,3.4,1.7,0.2,'Iris-setosa';
            5.1,3.7,1.5,0.4,'Iris-setosa';
            4.6,3.6,1.0,0.2,'Iris-setosa';
            5.1,3.3,1.7,0.5,'Iris-setosa';
            4.8,3.4,1.9,0.2,'Iris-setosa';
            5.0,3.0,1.6,0.2,'Iris-setosa';
            5.0,3.4,1.6,0.4,'Iris-setosa';
            5.2,3.5,1.5,0.2,'Iris-setosa';
            5.2,3.4,1.4,0.2,'Iris-setosa';
            4.7,3.2,1.6,0.2,'Iris-setosa';
            4.8,3.1,1.6,0.2,'Iris-setosa';
            5.4,3.4,1.5,0.4,'Iris-setosa';
            5.2,4.1,1.5,0.1,'Iris-setosa';
            5.5,4.2,1.4,0.2,'Iris-setosa';
            4.9,3.1,1.5,0.1,'Iris-setosa';
            5.0,3.2,1.2,0.2,'Iris-setosa';
            5.5,3.5,1.3,0.2,'Iris-setosa';
            4.9,3.1,1.5,0.1,'Iris-setosa';
            4.4,3.0,1.3,0.2,'Iris-setosa';
            5.1,3.4,1.5,0.2,'Iris-setosa';
            5.0,3.5,1.3,0.3,'Iris-setosa';
            4.5,2.3,1.3,0.3,'Iris-setosa';
            4.4,3.2,1.3,0.2,'Iris-setosa';
            5.0,3.5,1.6,0.6,'Iris-setosa';
            5.1,3.8,1.9,0.4,'Iris-setosa';
            4.8,3.0,1.4,0.3,'Iris-setosa';
            5.1,3.8,1.6,0.2,'Iris-setosa';
            4.6,3.2,1.4,0.2,'Iris-setosa';
            5.3,3.7,1.5,0.2,'Iris-setosa';
            5.0,3.3,1.4,0.2,'Iris-setosa';
            7.0,3.2,4.7,1.4,'Iris-versicolor';
            6.4,3.2,4.5,1.5,'Iris-versicolor';
            6.9,3.1,4.9,1.5,'Iris-versicolor';
            5.5,2.3,4.0,1.3,'Iris-versicolor';
            6.5,2.8,4.6,1.5,'Iris-versicolor';
            5.7,2.8,4.5,1.3,'Iris-versicolor';
            6.3,3.3,4.7,1.6,'Iris-versicolor';
            4.9,2.4,3.3,1.0,'Iris-versicolor';
            6.6,2.9,4.6,1.3,'Iris-versicolor';
            5.2,2.7,3.9,1.4,'Iris-versicolor';
            5.0,2.0,3.5,1.0,'Iris-versicolor';
            5.9,3.0,4.2,1.5,'Iris-versicolor';
            6.0,2.2,4.0,1.0,'Iris-versicolor';
            6.1,2.9,4.7,1.4,'Iris-versicolor';
            5.6,2.9,3.6,1.3,'Iris-versicolor';
            6.7,3.1,4.4,1.4,'Iris-versicolor';
            5.6,3.0,4.5,1.5,'Iris-versicolor';
            5.8,2.7,4.1,1.0,'Iris-versicolor';
            6.2,2.2,4.5,1.5,'Iris-versicolor';
            5.6,2.5,3.9,1.1,'Iris-versicolor';
            5.9,3.2,4.8,1.8,'Iris-versicolor';
            6.1,2.8,4.0,1.3,'Iris-versicolor';
            6.3,2.5,4.9,1.5,'Iris-versicolor';
            6.1,2.8,4.7,1.2,'Iris-versicolor';
            6.4,2.9,4.3,1.3,'Iris-versicolor';
            6.6,3.0,4.4,1.4,'Iris-versicolor';
            6.8,2.8,4.8,1.4,'Iris-versicolor';
            6.7,3.0,5.0,1.7,'Iris-versicolor';
            6.0,2.9,4.5,1.5,'Iris-versicolor';
            5.7,2.6,3.5,1.0,'Iris-versicolor';
            5.5,2.4,3.8,1.1,'Iris-versicolor';
            5.5,2.4,3.7,1.0,'Iris-versicolor';
            5.8,2.7,3.9,1.2,'Iris-versicolor';
            6.0,2.7,5.1,1.6,'Iris-versicolor';
            5.4,3.0,4.5,1.5,'Iris-versicolor';
            6.0,3.4,4.5,1.6,'Iris-versicolor';
            6.7,3.1,4.7,1.5,'Iris-versicolor';
            6.3,2.3,4.4,1.3,'Iris-versicolor';
            5.6,3.0,4.1,1.3,'Iris-versicolor';
            5.5,2.5,4.0,1.3,'Iris-versicolor';
            5.5,2.6,4.4,1.2,'Iris-versicolor';
            6.1,3.0,4.6,1.4,'Iris-versicolor';
            5.8,2.6,4.0,1.2,'Iris-versicolor';
            5.0,2.3,3.3,1.0,'Iris-versicolor';
            5.6,2.7,4.2,1.3,'Iris-versicolor';
            5.7,3.0,4.2,1.2,'Iris-versicolor';
            5.7,2.9,4.2,1.3,'Iris-versicolor';
            6.2,2.9,4.3,1.3,'Iris-versicolor';
            5.1,2.5,3.0,1.1,'Iris-versicolor';
            5.7,2.8,4.1,1.3,'Iris-versicolor';
            6.3,3.3,6.0,2.5,'Iris-virginica';
            5.8,2.7,5.1,1.9,'Iris-virginica';
            7.1,3.0,5.9,2.1,'Iris-virginica';
            6.3,2.9,5.6,1.8,'Iris-virginica';
            6.5,3.0,5.8,2.2,'Iris-virginica';
            7.6,3.0,6.6,2.1,'Iris-virginica';
            4.9,2.5,4.5,1.7,'Iris-virginica';
            7.3,2.9,6.3,1.8,'Iris-virginica';
            6.7,2.5,5.8,1.8,'Iris-virginica';
            7.2,3.6,6.1,2.5,'Iris-virginica';
            6.5,3.2,5.1,2.0,'Iris-virginica';
            6.4,2.7,5.3,1.9,'Iris-virginica';
            6.8,3.0,5.5,2.1,'Iris-virginica';
            5.7,2.5,5.0,2.0,'Iris-virginica';
            5.8,2.8,5.1,2.4,'Iris-virginica';
            6.4,3.2,5.3,2.3,'Iris-virginica';
            6.5,3.0,5.5,1.8,'Iris-virginica';
            7.7,3.8,6.7,2.2,'Iris-virginica';
            7.7,2.6,6.9,2.3,'Iris-virginica';
            6.0,2.2,5.0,1.5,'Iris-virginica';
            6.9,3.2,5.7,2.3,'Iris-virginica';
            5.6,2.8,4.9,2.0,'Iris-virginica';
            7.7,2.8,6.7,2.0,'Iris-virginica';
            6.3,2.7,4.9,1.8,'Iris-virginica';
            6.7,3.3,5.7,2.1,'Iris-virginica';
            7.2,3.2,6.0,1.8,'Iris-virginica';
            6.2,2.8,4.8,1.8,'Iris-virginica';
            6.1,3.0,4.9,1.8,'Iris-virginica';
            6.4,2.8,5.6,2.1,'Iris-virginica';
            7.2,3.0,5.8,1.6,'Iris-virginica';
            7.4,2.8,6.1,1.9,'Iris-virginica';
            7.9,3.8,6.4,2.0,'Iris-virginica';
            6.4,2.8,5.6,2.2,'Iris-virginica';
            6.3,2.8,5.1,1.5,'Iris-virginica';
            6.1,2.6,5.6,1.4,'Iris-virginica';
            7.7,3.0,6.1,2.3,'Iris-virginica';
            6.3,3.4,5.6,2.4,'Iris-virginica';
            6.4,3.1,5.5,1.8,'Iris-virginica';
            6.0,3.0,4.8,1.8,'Iris-virginica';
            6.9,3.1,5.4,2.1,'Iris-virginica';
            6.7,3.1,5.6,2.4,'Iris-virginica';
            6.9,3.1,5.1,2.3,'Iris-virginica';
            5.8,2.7,5.1,1.9,'Iris-virginica';
            6.8,3.2,5.9,2.3,'Iris-virginica';
            6.7,3.3,5.7,2.5,'Iris-virginica';
            6.7,3.0,5.2,2.3,'Iris-virginica';
            6.3,2.5,5.0,1.9,'Iris-virginica';
            6.5,3.0,5.2,2.0,'Iris-virginica';
            6.2,3.4,5.4,2.3,'Iris-virginica';
            5.9,3.0,5.1,1.8,'Iris-virginica';
            };

%Take the information from the first 3 cells and store it in X_data
%Make sure to store the data as numeric using the cell2mat function
X_Data = cell2mat(data_raw(:,1:3));

% Store the labels in Y_labels
Y_labels = data_raw(:, 5);

%Generate a vector of 30 random indices that we will use to select 30 random samples
random_indices = randperm(size(X_Data, 1), 30);

%Use the random indices to select 30 random samples from the original matrix (X_Data)
X_Test_Data = X_Data(random_indices, :);

%Create a copy of the original data into X_Training_Data
X_Training_Data = X_Data;

%Get rid of the 30 selected random samples (X_Test_Data) within the X_Training_Data
X_Training_Data(random_indices, :) = [];

%X_Test_Data and X_Training_Data are now two matrices that contain 30 and 120 samples respectively, where X_Training_Data will be the training data and X_Test_Data the test data

%Do the same exact thing with the labels to have Y_Test_Labels and Y_Training_Labels
Y_Test_Labels = Y_labels(random_indices, :);
Y_Training_Labels = Y_labels;
Y_Training_Labels(random_indices,:) = [];

%We're going to use the euclidean distance method to find the nearest neighbor
%To do this, we take a new point, and calculate the distance from this point to all training points
%The new point will be the first in the test data matrix
selected_test_point = X_Test_Data(1, :);

%Calculate the distance from this test point to all training points
minimum_distance = realmax;
minimum_distance_index = 0;

%Iterate through all training points
for i = 1:1:size(X_Training_Data, 1)
    actual_distance = sqrt((X_Training_Data(i,1) - selected_test_point(1,1))^2 ...
                + (X_Training_Data(i,2) - selected_test_point(1,2))^2 ...
                + (X_Training_Data(i,3) - selected_test_point(1,3))^2);
    if actual_distance < minimum_distance
        minimum_distance = actual_distance;
        minimum_distance_index = i;
    end
end

%Get the prediction of the plant type
prediction = string(Y_Training_Labels(minimum_distance_index));

%Generate a 3D plot of the training data and the selected test point
figure;
for i = 1:size(Y_Training_Labels, 1)
    if strcmp(Y_Training_Labels(i), 'Iris-setosa')
        setosa = plot3(X_Training_Data(i, 1), X_Training_Data(i, 2), X_Training_Data(i, 3), 'ro', 'color', 'green', 'MarkerSize', 10);
    elseif strcmp(Y_Training_Labels(i), 'Iris-versicolor')
        versicolor = plot3(X_Training_Data(i, 1), X_Training_Data(i, 2), X_Training_Data(i, 3), 'go', 'color', 'black','MarkerSize', 10);
    else
        virginica = plot3(X_Training_Data(i, 1), X_Training_Data(i, 2), X_Training_Data(i, 3), 'bo', 'color', 'red', 'MarkerSize', 10);
    end
    hold on;
end

%The selected test point will be plotted as a big 'x'
predictionPlot = plot3(selected_test_point(1,1), selected_test_point(1,2), selected_test_point(1,3), 'x', 'MarkerSize', 15, 'LineWidth', 3);
title('3D Visualization of Plant Types by Color');
legend([setosa, versicolor, virginica, predictionPlot], 'Setosa', 'Versicolor', 'Virginica', prediction);
grid on;

%Show the prediction
fprintf('The prediction of the plant type is: %s\n', prediction);
fprintf('The actual plant type is: %s\n', string(Y_Test_Labels(1)));