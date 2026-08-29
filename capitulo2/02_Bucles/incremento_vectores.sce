// ============================================================================
// ARCHIVO: incremento_vectores.sce
// CAPÍTULO 2: Programación - Bucles
// GUÍA: Scilab for very beginners (Páginas 15 y 16)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. OPERADOR DE INCREMENTO (:) - PASO POR DEFECTO ===");
// La sintaxis básica con el operador ':' es << valor_inicial : valor_final >>
// Cuando no se especifica el paso, Scilab toma por defecto un incremento de 1.

v1 = 3:10;
disp(v1, "Vector de enteros incrementando de 1 en 1 desde 3 hasta 10:");

disp(" ");
disp("=== 2. OPERADOR DE INCREMENTO CON PASO PERSONALIZADO ===");
// La sintaxis completa es << valor_inicial : paso : valor_final >>
// Progresión aritmética con paso positivo:

v2 = 1:2:10;
disp(v2, "Vector incrementando de 2 en 2 desde 1 hasta 10:");

disp(" ");
disp("=== 3. DECREMENTO CON PASO NEGARIVO ===");
// Si el paso es negativo, el vector genera una secuencia descendente.

u = 20:-4:2;
disp(u, "Vector decrementando de 4 en 4 desde 20 hasta 2:");