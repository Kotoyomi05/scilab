// ====================================================================
// REGRESIÓN LINEAL MULTIVARIABLE EN SCILAB (OPTIMIZADO VEC)
// Dataset: California Housing
// ====================================================================

clc;
clear;

printf("=== INICIANDO PROCESO DE REGRESIÓN VECTORIZADO ===\n\n");

filename = "housing.csv";

if ~isfile(filename) then
    error("El archivo housing.csv no se encuentra en el directorio actual.");
end

// 1. Cargar matriz de texto rápida
raw_data = csvRead(filename, ",", ".", "string");
data_matrix = raw_data(2:$, :);
[num_rows, num_cols] = size(data_matrix);

printf("Filas procesadas: %d\n", num_rows);

// 2. Extracción y conversión vectorizada de columnas
// Columna 9: median_house_value (Y)
Y = evstr(data_matrix(:, 9));

// Predictores numéricos: [median_income, housing_median_age, total_rooms, population, households, latitude, longitude]
X_cols = [8, 3, 4, 6, 7, 2, 1];
X_raw = zeros(num_rows, length(X_cols));

for j = 1:length(X_cols)
    X_raw(:, j) = evstr(data_matrix(:, X_cols(j)));
end

// Imputación vectorizada de valores nulos (NaNs)
for j = 1:size(X_raw, 2)
    nan_mask = isnan(X_raw(:, j));
    if sum(nan_mask) > 0 then
        mean_val = mean(X_raw(~nan_mask, j));
        X_raw(nan_mask, j) = mean_val;
    end
end

// 3. Normalización Z-score vectorizada
mu = mean(X_raw, "r");
sigma = stdev(X_raw, "r");
X_norm = (X_raw - ones(num_rows, 1) * mu) ./ (ones(num_rows, 1) * sigma);

// Matriz de diseño con intercepción
X_design = [ones(num_rows, 1), X_norm];

// 4. División de Datos (80% Train, 20% Test)
rand("seed", 42);
perm_indices = grand(1, "prm", (1:num_rows)');

n_train = floor(0.8 * num_rows);
train_idx = perm_indices(1:n_train);
test_idx = perm_indices(n_train+1:$);

X_train = X_design(train_idx, :);
Y_train = Y(train_idx);

X_test = X_design(test_idx, :);
Y_test = Y(test_idx);

// 5. Cálculo del modelo (Ecuación Normal OLS)
printf("Calculando coeficientes W por Mínimos Cuadrados...\n");
W = (X_train' * X_train) \ (X_train' * Y_train);

// 6. Predicción y Métricas
Y_pred = X_test * W;
errors = Y_test - Y_pred;

MAE = mean(abs(errors));
RMSE = sqrt(mean(errors.^2));
SS_tot = sum((Y_test - mean(Y_test)).^2);
SS_res = sum(errors.^2);
R2 = 1 - (SS_res / SS_tot);

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