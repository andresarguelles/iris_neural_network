clear;
close all;
clc;

%Insertamos los datos de las plantas en forma de celda
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

%Tomamos la informacion de las primeras 3 celdas, y la almacenamos en
%X_data
%Nos aseguramos de guardar los datos de forma numerica con la funcion cell2mat
X_Data = cell2mat(data_raw(:,1:3));

% Almacenamos las etiquetas en Y_label
Y_label = data_raw(:, 5);

%Generamos un vector de 30 indices aleatorios que usaremos para seleccionar 30 muestras aleatorias
indices_aleatorios = randperm(size(X_Data, 1), 30);

%Seleccionamos 30 muestras aleatorias de la matriz original (X_Data)
X_Data_Probe = X_Data(indices_aleatorios, :);

%Creamos una copia de los datos originales
X_Data_Training = X_Data;

%Eliminamos de esta copia las muestras que seleccionamos anteriormente (X_Data_Probe)
X_Data_Training(indices_aleatorios, :) = [];

%X_Data_Probe y X_Data_Training son ahora dos matrices que contienen 30 y 120 muestras respectivamente, en donde X_Data_Training seran los datos de entrenamiento y X_Data_Probe los datos de prueba

%Hacemos exactamente lo mismo con las etiquetas para tener Y_label_Probe y Y_label_Training
Y_label_Probe = Y_label(indices_aleatorios, :);
Y_label_Training = Y_label;
Y_label_Training(indices_aleatorios,:) = [];

%Usaremos el metodo de la distancia euclidiana para encontrar el vecino mas cercano
%Para ello, tomamos un punto nuevo, y calculamos la distancia de este punto a todos los puntos de entrenamiento
%El punto nuevo sera el primer dato de prueba
punto_nuevo = X_Data_Probe(1, :);

%Calculamos la distancia de este punto a todos los puntos de entrenamiento
distancia_minima = realmax;
index_distancia_min = 0;

for i = 1:1:size(X_Data_Training, 1)
    dista = sqrt((X_Data_Training(i,1) - punto_nuevo(1,1))^2 ...
                + (X_Data_Training(i,2) - punto_nuevo(1,2))^2 ...
                + (X_Data_Training(i,3) - punto_nuevo(1,3))^2);
    if dista < distancia_minima
        distancia_minima = dista;
        index_distancia_min = i;
    end
end

%Obtenemos la prediccion de la etiqueta de la planta
prediccion = string(Y_label_Training(index_distancia_min));

%Graficamos los datos
% figure;
% for i = 1:size(tipos_de_plantas, 2)
%     X = X_Data_Training(1 + (50*(i-1)) : 50*i, 1);
%     Y = X_Data_Training(1 + (50*(i-1)) : 50*i, 2);
%     Z = X_Data_Training(1 + (50*(i-1)) : 50*i, 3);
%     plot3(X, Y, Z, '--o', 'MarkerSize', 10);
%     hold on;
% end

%Graficamos los datos
figure;
for i = 1:size(Y_label_Training, 1)
    if strcmp(Y_label_Training(i), 'Iris-setosa')
        setosa = plot3(X_Data_Training(i, 1), X_Data_Training(i, 2), X_Data_Training(i, 3), 'ro', 'color', 'green', 'MarkerSize', 10);
    elseif strcmp(Y_label_Training(i), 'Iris-versicolor')
        versicolor = plot3(X_Data_Training(i, 1), X_Data_Training(i, 2), X_Data_Training(i, 3), 'go', 'color', 'black','MarkerSize', 10);
    else
        virginica = plot3(X_Data_Training(i, 1), X_Data_Training(i, 2), X_Data_Training(i, 3), 'bo', 'color', 'red', 'MarkerSize', 10);
    end
    hold on;
end

%Graficamos el punto nuevo
prediccionPlot = plot3(punto_nuevo(1,1), punto_nuevo(1,2), punto_nuevo(1,3), 'x', 'MarkerSize', 15, 'LineWidth', 3);
title('Visualización tridimensional de tipos de plantas por color');
legend([setosa, versicolor, virginica, prediccionPlot], 'Setosa', 'Versicolor', 'Virginica', prediccion);
grid on;

%Imprimimos la prediccion
fprintf('La prediccion de la planta es: %s\n', prediccion);