// ============================================================================
// ARCHIVO: bucle_for_secuencia.sce
// CAPÍTULO 2: Programación - Bucles
// GUÍA: Scilab for very beginners (Página 16)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== CÁLCULO DE 20 TÉRMINOS DE UNA SECUENCIA RECURSIVA CON BUCLE FOR ===");

// 1. Condición inicial de la secuencia: u(1) = 4
u(1) = 4;

disp("Términos calculados (n, u(n)):");

// 2. Estructura de control 'for': itera desde n = 1 hasta n = 20
for n = 1:20
    // Fórmula de recurrencia: u(n+1) = u(n) + 2*n + 3
    u(n+1) = u(n) + 2*n + 3;
    
    // Muestra en cada iteración el índice actual 'n' y su valor correspondiente 'u(n)'
    disp([n, u(n)]);
end