// ============================================================================
// ARCHIVO: diagramas_de_barra.sce
// CAPÍTULO 2: Programación - Simulaciones y Estadística
// GUÍA: Scilab for very beginners (Página 23)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. DIAGRAMA DE BARRAS SIMPLE DESDE UN VECTOR ===");
// Definición de un vector con valores de frecuencias o alturas
y = [2, 5, 8, 4, 3, 7];

// Limpia la ventana gráfica
clf;

// bar(y) dibuja barras verticales correspondientes a cada elemento del vector y
bar(y);
xtitle("Diagrama de Barras Simple", "Categoría / Índice", "Frecuencia / Valor");

disp("Presiona enter en la consola de Scilab o ejecuta la siguiente sección para ver el gráfico de barras comparativo...");

disp("=== 2. DIAGRAMA DE BARRAS AGRUPADAS (COMPARATIVO) CON MATRICES ===");
// Para comparar conjuntos de datos (por ejemplo, resultados de dos pruebas),
// se construye una matriz donde cada columna representa un grupo/serie.

Y = [2, 4; 
     5, 6; 
     8, 7; 
     4, 5; 
     3, 2];

// Limpia la ventana gráfica
clf;

// bar(Y) dibuja barras agrupadas (emparejadas) para cada fila de la matriz
bar(Y);
xtitle("Diagrama de Barras Comparativo", "Grupo", "Valores");
hl = legend(["Serie A"; "Serie B"]);