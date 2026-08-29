// ============================================================================
// ARCHIVO: acceso_y_operaciones.sce
// CAPÍTULO 2: Programación - Complementos sobre matrices y vectores
// GUÍA: Scilab for very beginners (Páginas 24 y 25)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. DEFINICIÓN DE MATRIZ Y ACCESO A SUBMATRICES ===");
// Definición de una matriz A de 3x3
A = [1 2 3; 
     4 5 6; 
     7 8 9];
disp(A, "Matriz A (3x3):");

// Uso del operador ':' para extraer filas o columnas completas:
// A(i, :) extrae toda la fila i
fila_2 = A(2, :);
disp(fila_2, "Segunda fila de A - A(2, :):");

// A(:, j) extrae toda la columna j
columna_3 = A(:, 3);
disp(columna_3, "Tercera columna de A - A(:, 3):");

disp(" ");
disp("=== 2. TRANSPOSICIÓN DE MATRICES ===");
// La comilla simple (') calcula la transpuesta (o transpuesta conjugada en números complejos).
A_transpuesta = A';
disp(A_transpuesta, "Transpuesta de A (A'):");

disp(" ");
disp("=== 3. OPERACIONES ELEMENTO A ELEMENTO vs. MATRICIALES ===");
// Definición de vectores/matrices para pruebas
V1 = [1, 2, 3];
V2 = [4, 5, 6];

// Operación Elemento a Elemento (.*)
// Multiplica cada posición de V1 por la posición correspondiente en V2
prod_elemento = V1 .* V2;
disp(prod_elemento, "Producto elemento a elemento (V1 .* V2):");

// División Elemento a Elemento (./)
div_elemento = V1 ./ V2;
disp(div_elemento, "División elemento a elemento (V1 ./ V2):");

// Nota: Intentar hacer V1 * V2 generará un error de dimensiones inconsistentes 
// porque la multiplicación matricial requiere que el número de columnas de V1 
// sea igual al número de filas de V2.