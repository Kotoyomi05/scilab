// ============================================================================
// ARCHIVO: variables_basicas.sce
// CAPÍTULO 2: Programación - Variables, asignación y visualización
// GUÍA: Scilab for very beginners (Páginas 6 y 12-13)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. ASIGNACIÓN BÁSICA DE VARIABLES ===");
// En Scilab no se requiere declarar el tipo de variable previo a usarla, 
// pero siempre debe tener un valor asignado antes de ser llamada.
a = %pi / 4;
disp(a, "Valor asignado a la variable 'a' (%pi/4):");

// Los nombres de variables pueden ser cualesquiera mientras no usen 
// caracteres especiales ni acentos.
Piby2 = %pi / 2;
disp(Piby2, "Valor asignado a 'Piby2' (%pi/2):");

disp(" ");
disp("=== 2. CONSTANTES ESPECIALES ===");
// Scilab utiliza el prefijo '%' para constantes numéricas incorporadas:
// %pi -> Número Pi (3.1415927...)
// %e  -> Número e  (2.7182818...)
// %i  -> Unidad imaginaria i (salida representada como 'i')

disp(%pi, "Constante %pi:");
disp(%e, "Constante %e:");

numero_complejo = 2 + 3*%i;
disp(numero_complejo, "Número complejo (2 + 3*%i):");

disp(" ");
disp("=== 3. SENSIBILIDAD A MAYÚSCULAS Y MINÚSCULAS ===");
// Scilab diferencia entre mayúsculas y minúsculas (case sensitive).
// Ejemplo con funciones del sistema:
val_sqrt = sqrt(9);
disp(val_sqrt, "Resultado de sqrt(9):");

// Nota: Intentar ejecutar 'SQRT(9)' generará un error de variable no definida:
// !--error 4: Undefined variable: SQRT

disp(" ");
disp("=== 4. SALIDAS Y VARIABLE AUTOMÁTICA 'ans' ===");
// Si una operación no se asigna a una variable explícita, 
// el resultado se guarda automáticamente en la variable 'ans' (answer).
3 * (4 - 2);
disp(ans, "Resultado almacenado en 'ans' tras evaluar 3*(4-2):");

// El uso del punto y coma (;) al final de una línea ejecuta la instrucción 
// pero omite imprimir la salida en la consola.
radio = 5;                        // Se ejecuta sin mostrar salida
area = %pi * radio^2;             // Se ejecuta sin mostrar salida
disp(area, "Área del círculo (calculada con ; al final):");