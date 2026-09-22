// ====================================================================
// REGRESIÓN LINEAL MULTIVARIABLE EN SCILAB (OPTIMIZADO VEC)
// Dataset: California Housing
// ====================================================================

clc;
clear;
//ESta parte es como para hacer un pequeño borrado o limpieza antes de empezar a colocar 
//los datos como para que no se mezclen entre sí
printf("=== INICIANDO PROCESO DE REGRESIÓN VECTORIZADO ===\n\n");

filename = "housing.csv";

if ~isfile(filename) then
    error("El archivo housing.csv no se encuentra en el directorio actual.");
end //Busca la base de datos 

// 1. Cargar matriz de texto rápida
raw_data = csvRead(filename, ",", ".", "string");//Lee todo el archivo como si fuera un texto
data_matrix = raw_data(2:$, :);//aca hago un salto de linea hacia la 2 columna
//ya que las dos primeras columnas que aparecen son titulos
[num_rows, num_cols] = size(data_matrix);

printf("Filas procesadas: %d\n", num_rows);
printf("Columnas procesadas: %d\n", num_cols);

// 2. Extracción y conversión vectorizada de columnas
// Columna 9: precio medio de las casas (Y)
Y = evstr(data_matrix(:, 9)); //aca selecionamos una columna del cual queramos saber
// en mi caso de regresión eleguí el precio de las casas
//Y el evstr convierte el texto en numeros reales 

// Predictores numéricos: [ingresos, edad de la casa, cuartos, población, hogares, latitud, longitud]
X_cols = [8, 3, 4, 6, 7, 2, 1];
X_raw = zeros(num_rows, length(X_cols));

//Aca lo que intento hacer es guardar dentro de X_raw cada numero de columnas
for j = 1:length(X_cols)
    X_raw(:, j) = evstr(data_matrix(:, X_cols(j))); 
end

// Aca inyectamos que cada ves que tengamos un valor nulo 
for j = 1:size(X_raw, 2)
    nan_mask = isnan(X_raw(:, j));
    if sum(nan_mask) > 0 then //Aca cada que una columna este vacia las va a rellenar
        mean_val = mean(X_raw(~nan_mask, j)); //aca el mean_val es un guardador
        //y el mean que esta ahi se utiliza para cada vez que se encuentre un valor que sea 0
        //se reemplazara por el promedio que seria la variable nan_mask
        X_raw(nan_mask, j) = mean_val; //colocando asi que cada variable 0 que este dañada
        //tengan el mismo valor
    end
end

// 3. Normalización Z-score vectorizada
mu = mean(X_raw, "r"); //mu sera el promedio entre columnas
sigma = stdev(X_raw, "r");//sigma sera la desviación estandar
X_norm = (X_raw - ones(num_rows, 1) * mu) ./ (ones(num_rows, 1) * sigma);
//aca creo una varibale en "equilibrio" que lo que hace esque valores gigantes
//los dividos por su desviación estandar para que no salga cifras tan descomunales

// Matriz de diseño con intercepción
X_design = [ones(num_rows, 1), X_norm];

// 4. División de Datos (80% Entrenamiento, 20% Ensaño y error)
rand("seed", 42);//aca colocaremos una semilla para que haya un desorden de datos
//y asi los resultados no cambien
perm_indices = grand(1, "prm", (1:num_rows)');//perm_indices desordena las filas al azar

n_train = floor(0.8 * num_rows);//aca calcula cuantas filas corresponde a ese 80% hacia abajo
train_idx = perm_indices(1:n_train);//guarda las posiciones de las filas que van de acuerdo
//al entrenamiento 
test_idx = perm_indices(n_train+1:$);//guarda las posiciones de las filas restantes (20%)


//aca le muestro con datos reales las caracteristicas al modelo
X_train = X_design(train_idx, :);
Y_train = Y(train_idx);

//aca por medio de los datos mostrados vemos que tan bien aprende el modelo
X_test = X_design(test_idx, :);
Y_test = Y(test_idx);

// 5. Cálculo del modelo (Ecuación Normal OLS)
printf("Calculando coeficientes W por Mínimos Cuadrados...\n");
W = (X_train' * X_train) \ (X_train' * Y_train);

// 6. Predicción y Métricas
Y_pred = X_test * W; //Aca se pone a prueba lo del 20%, haciendo que el modelo intente
//adivinar el precio de las casas
errors = Y_test - Y_pred;//Aca calcula la diferencia entre el precio real y el precio que adivino

MAE = mean(abs(errors));//Promedia que tan equivocado estuvo el modelo
RMSE = sqrt(mean(errors.^2));//Aca le elevamos el numero de errores para penalizar mas fuertes
//las equivocaciones grandes, antes de promediarlo

//Creo una escala del 0 a 1 para determinar que tan bueno estuvido el modelo
SS_tot = sum((Y_test - mean(Y_test)).^2);
SS_res = sum(errors.^2);
R2 = 1 - (SS_res / SS_tot);
//Si el modelo da como resultado un numero mayor a 0.7 significa que el modelo explica
//el 70% de la variación de los precios de la casa

printf("\n=== RESULTADOS DEL MODELO ===\n");
printf("Error Absoluto Medio (MAE): $%.2f\n", MAE);
printf("Raiz del Error Cuadratico Medio (RMSE): $%.2f\n", RMSE);
printf("Coeficiente de Determinacion (R^2): %.4f\n\n", R2);

// 7. Visualización
scf(0);
clf(0);
plot(Y_test, Y_pred, "b.");
xtitle("Regresion Lineal - California Housing", "Precio Real (USD)", "Precio Predicho (USD)");

min_val = min([Y_test; Y_pred]);
max_val = max([Y_test; Y_pred]);
plot([min_val, max_val], [min_val, max_val], "r-", "LineWidth", 2);
legend(["Predicciones", "Linea Ideal Y = Y_pred"]);

printf("Ejecucion finalizada instantaneamente.\n");