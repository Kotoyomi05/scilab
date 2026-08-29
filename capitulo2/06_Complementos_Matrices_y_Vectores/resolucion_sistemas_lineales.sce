// ============================================================================
// ARCHIVO: resolucion_sistemas_lineales.sce
// CAPÍTULO 2: Programación - Complementos sobre matrices y vectores
// GUÍA: Scilab for very beginners (Página 25)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== RESOLUCIÓN DE SISTEMAS DE ECUACIONES LINEALES (A * X = Y) ===");

// Ejemplo del sistema de ecuaciones:
//  1*x1 + 2*x2 + 3*x3 = 10
//  4*x1 + 5*x2 + 6*x3 = 11
//  7*x1 + 8*x2 + 0*x3 = 12

// 1. Definición de la matriz de coeficientes A (3x3)
A = [1 2 3; 
     4 5 6; 
     7 8 0];
disp(A, "Matriz de coeficientes A:");

// 2. Definición del vector de términos independientes Y (3x1)
Y = [10; 11; 12];
disp(Y, "Vector término independiente Y:");

// 3. Resolución mediante el operador backslash (\)
// En Scilab, 'X = A \ Y' es computacionalmente preferible y más preciso
// que calcular la inversa 'X = inv(A) * Y'.
X = A \ Y;

disp(X, "Solución del sistema X (donde X = A \ Y):");

disp(" ");
disp("=== VERIFICACIÓN DEL RESULTADO ===");
// Verificamos evaluando A * X para comprobar que retorna exactamente Y
Y_verificacion = A * X;
disp(Y_verificacion, "Comprobación calculando A * X (debe ser igual a Y):");