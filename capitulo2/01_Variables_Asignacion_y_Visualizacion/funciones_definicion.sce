// ============================================================================
// ARCHIVO: funciones_definicion.sce
// CAPÍTULO 2: Programación - Variables, asignación y visualización
// GUÍA: Scilab for very beginners (Página 13)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. DEFINICIÓN DE FUNCIONES CON MÚLTIPLES PARÁMETROS ===");
// Una función se define entre las palabras clave 'function' y 'endfunction'.
// Ejemplo: Conversión de Euros (e) a Dólares (d) dada una tasa de cambio (t).
// Fórmula: d = e * t

function d = conversion_dolares(e, t)
    d = e * t;
endfunction

// Ejemplo de uso de la función
euros = 200;
tasa_cambio = 1.4;
dolares = conversion_dolares(euros, tasa_cambio);

disp("Conversión de " + string(euros) + " Euros a una tasa de " + string(tasa_cambio) + ":");
disp(dolares, "Resultado en Dólares:");

disp(" ");
disp("=== 2. FUNCIONES DE UNA VARIABLE REAL ===");
// Las variables 'x' e 'y' en la definición de la función son variables ficticias
// o locales; sus nombres no interfieren con otras variables del espacio de trabajo.

// Función f(x) = 36 / (8 + e^(-x))
function y = f(x)
    y = 36 / (8 + exp(-x));
endfunction

// Función g(x) = (4 * x / 9) + 4
function y = g(x)
    y = (4 * x / 9) + 4;
endfunction

// Evaluación de las funciones para valores específicos de x
val_f = f(10);
val_g = g(12.5);

disp(val_f, "Resultado de f(10):");
disp(val_g, "Resultado de g(12.5):");