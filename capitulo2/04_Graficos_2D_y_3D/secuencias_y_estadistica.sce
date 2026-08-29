// ============================================================================
// ARCHIVO: secuencias_y_estadistica.sce
// CAPÍTULO 2: Programación - Gráficos 2D y 3D
// GUÍA: Scilab for very beginners (Páginas 20 y 21)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. GRAFICACIÓN DE TÉRMINOS DE UNA SECUENCIA ===");
// Cálculo de 50 términos de la secuencia u(n) = (-0.8)^n
for n = 1:50
    u(n) = (-0.8)^n;
end

// Limpia la ventana gráfica
clf;

// plot(u, "*r") grafica la secuencia M(n, u(n)):
// Las comillas "*r" especifican estrellas no conectadas de color rojo.
// Por defecto, si no se indica el formato, los puntos se unen mediante líneas azules.
plot(u, "*r");
xtitle("Secuencia u(n) = (-0.8)^n", "Índice n", "Valor u(n)");

disp("Presiona enter en la consola de Scilab o ejecuta la siguiente sección para ver el gráfico de dispersión...");

disp("=== 2. DIAGRAMA DE DISPERSIÓN PARA DATOS BIVARIADOS ===");
// Datos estadísticos bivariados en dos vectores X e Y
X = [1, 3, 3, 7, 7, 9, 10];
Y = [8, 7, 5, 5, 4, 2, 2];

// Limpia la ventana gráfica para el nuevo gráfico
clf;

// plot(X, Y, "<") grafica el conjunto de puntos M(Xi, Yi) usando triángulos azules
plot(X, Y, "<");
xtitle("Diagrama de Dispersión (Datos Bivariados)", "Variable X", "Variable Y");