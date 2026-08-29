// ============================================================================
// ARCHIVO: informacion_variables.sce
// CAPÍTULO 3: Funciones útiles de gestión - Gestión de Variables
// GUÍA: Scilab for very beginners (Páginas 29 y 30)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. CREACIÓN DE DIFERENTES TIPOS DE DATOS ===");
A = [1, 2, 3; 4, 5, 6];           // Matriz real de 2x3
B = "Hola Scilab";                // Cadena de texto (string)
C = [%T, %F; %F, %T];            // Matriz booleana de 2x2
D = 3 + 4*%i;                    // Número complejo

disp("Variables creadas: A (matriz real), B (cadena), C (matriz booleana), D (complejo).");

disp(" ");
disp("=== 2. CONSULTA DE TIPOS CON TYPE() Y TYPEOF() ===");
// type() devuelve un código numérico interno (1: real/complejo, 10: string, 4: booleano, etc.)
// typeof() devuelve la descripción legible en formato de cadena de texto
disp("Tipo de A -> type: " + string(type(A)) + " | typeof: " + typeof(A));
disp("Tipo de B -> type: " + string(type(B)) + " | typeof: " + typeof(B));
disp("Tipo de C -> type: " + string(type(C)) + " | typeof: " + typeof(C));

disp(" ");
disp("=== 3. CONSULTA DE DIMENSIONES Y TAMAÑO ===");
// size(X) devuelve un vector [filas, columnas]
[filas_A, cols_A] = size(A);
disp("Dimensiones de la matriz A:");
disp("Filas: " + string(filas_A) + " | Columnas: " + string(cols_A));

// length(X) devuelve el número total de elementos en la matriz o vector
disp("Número total de elementos en A con length(A): " + string(length(A)));

disp(" ");
disp("=== 4. VERIFICACIÓN DE EXISTENCIA CON EXISTS() ===");
// exists("nombre_var") devuelve 1 si existe y 0 si no existe
if exists("A") == 1 then
    disp("La variable 'A' SÍ está definida en el entorno actual.");
end

if exists("variable_inexistente") == 0 then
    disp("La variable 'variable_inexistente' NO está definida.");
end