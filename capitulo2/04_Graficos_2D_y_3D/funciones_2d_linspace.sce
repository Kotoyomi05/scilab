// ============================================================================
// ARCHIVO: funciones_2d_linspace.sce
// CAPÍTULO 2: Programación - Gráficos 2D y 3D
// GUÍA: Scilab for very beginners (Páginas 19 y 20)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. DEFINICIÓN DE FUNCIONES A GRAFICAR ===");
// Definición de f(x) = (x^2 + 2x) * e^(-x)
function y = f(x)
    y = (x^2 + 2*x) * exp(-x);
endfunction

// Definición de g(x) = sin(x / 2)
function y = g(x)
    y = sin(x / 2);
endfunction

disp("=== 2. GENERACIÓN DE PUNTOS CON LINSPACE Y GRAFICACIÓN MULTIPLE ===");
// linspace(a, b, n) genera n puntos regularmente espaciados entre a y b.
// En este caso, 50 puntos entre -2 y 5.
x = linspace(-2, 5, 50);

// Limpia la ventana gráfica actual
clf;

// Dibuja ambas curvas simultáneamente:
// - f(x) en color rojo ("r")
// - g(x) en color verde ("g")
plot(x, f, "r", x, g, "g");

// Configuración de títulos y leyendas
xtitle("Gráficas de f(x) y g(x)", "Eje X", "Eje Y");
hl = legend(["f(x) = (x^2 + 2x)e^(-x)"; "g(x) = sin(x/2)"]);