// ============================================================================
// ARCHIVO: operadores_comparacion.sce
// CAPÍTULO 2: Programación - Pruebas y Condicionales
// GUÍA: Scilab for very beginners (Página 17)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. OPERADORES DE COMPARACIÓN Y VALORES BOOLEANOS ===");
// Los operadores lógicos retornan %T (Verdadero / True) o %F (Falso / False).
// Símbolos básicos:
// ==  (Igual)           ~= o <> (Diferente)
// <   (Menor que)       >       (Mayor que)
// <=  (Menor o igual)   >=      (Mayor o igual)

val_1 = 5;
val_2 = 10;

disp(val_1 < val_2, "Evaluación (5 < 10):");
disp(val_1 == val_2, "Evaluación (5 == 10):");
disp(val_1 ~= val_2, "Evaluación (5 ~= 10):");

disp(" ");
disp("=== 2. COMPARACIÓN ELEMENTO A ELEMENTO EN VECTORES ===");
// Al utilizar operadores de comparación como '==' o '<>' sobre vectores o matrices,
// Scilab realiza la evaluación elemento por elemento, devolviendo un vector booleano.

X = [1, 2, 5];
Y = [5, 3, 5];

disp(X, "Vector X:");
disp(Y, "Vector Y:");

comp_elemento = (X == Y);
disp(comp_elemento, "Resultado de X == Y (evaluación término a término):");

disp(" ");
disp("=== 3. COMPARACIÓN GLOBAL DE ARRAYS CON ISEQUAL() ===");
// Para verificar si dos vectores o matrices son globalmente idénticos en su totalidad,
// se utiliza la función isequal(). Para verificar si son diferentes, se antepone '~'.

es_igual = isequal(X, Y);
disp(es_igual, "Resultado de isequal(X, Y):");

es_diferente = ~isequal(X, Y);
disp(es_diferente, "Resultado de ~isequal(X, Y):");