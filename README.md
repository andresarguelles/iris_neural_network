# 🌸 Iris Neural Network 🌸

Welcome to the Iris Neural Network project! This MATLAB program is designed to classify the Iris plant into one of its three beautiful species: Iris-setosa, Iris-versicolor, and Iris-virginica. Using a dataset of 150 samples, each with four features (sepal length, sepal width, petal length, and petal width), our neural network helps determine the species of an Iris plant based on these features. This project is a fun and educational way to understand the principles of neural networks. 🌱🤖

## 📊 Dataset

The dataset used in this program is the famous Iris dataset, which includes 150 samples divided into three species:
- **Iris-setosa**
- **Iris-versicolor**
- **Iris-virginica**

Each sample in the dataset contains the following features:
- Sepal length
- Sepal width
- Petal length
- Petal width

## 🧠 Program Overview

1. **Data Insertion**: The program begins by inserting the raw data of the Iris plants into a cell array.
2. **Data Preparation**: 
   - The first three columns of the cell array (features) are converted to a numeric matrix `X_Data`.
   - The fifth column (species labels) is stored in `Y_label`.
3. **Data Splitting**:
   - 30 random samples are selected for testing (`X_Data_Probe` and `Y_label_Probe`).
   - The remaining 120 samples are used for training (`X_Data_Training` and `Y_label_Training`).
4. **Neural Network Training**: The training data is used to train a neural network.
5. **Prediction**: The trained neural network is used to predict the species of the test samples.

## 🎓 Educational Purpose

This project is part of a school activity designed to help students understand the basic principles of neural networks. By working through this project, you'll gain hands-on experience with data preparation, neural network training, and prediction. It's a great way to see how machine learning can be applied to real-world data! 📚✨

## 🚀 Usage

To run the program, execute the `matlab_iris_neural_network.m` script in MATLAB. Ensure that the dataset is correctly inserted into the script as shown in the code.

## 👨‍💻 Author

- Andrés Argüelles