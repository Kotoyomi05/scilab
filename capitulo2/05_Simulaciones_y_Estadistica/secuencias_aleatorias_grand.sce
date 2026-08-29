// ============================================================================
// ARCHIVO: secuencias_aleatorias_grand.sce
// CAPÍTULO 2: Programación - Simulaciones y Estadística
// GUÍA: Scilab for very beginners (Página 22)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. GENERACIÓN DE SECUENCIAS ALEATORIAS ENTERAS (uin) ===");
// grand(1, p, "uin", m, n) devuelve un vector de p enteros aleatorios 
// comprendidos entre m y n (m <= n).

// Ejemplo: Generar 4 números enteros aleatorios entre 1 y 6 (simulación de dados)
t = grand(1, 4, "uin", 1, 6);
disp(t, "Vector de 4 enteros aleatorios entre 1 y 6:");

disp(" ");
disp("=== 2. GENERACIÓN DE SECUENCIAS ALEATORIAS REALES (unf) ===");
// grand(1, p, "unf", a, b) devuelve un vector de p números reales aleatorios 
// continuamente distribuidos entre a y b (a <= b).

// Ejemplo: Generar 2 números reales aleatorios entre -1 y 1
tr = grand(1, 2, "unf", -1, 1);
disp(tr, "Vector de 2 reales aleatorios entre -1 y 1:");