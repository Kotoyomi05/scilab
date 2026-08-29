// ============================================================================
// ARCHIVO: juego_dados_if_else.sce
// CAPÍTULO 2: Programación - Pruebas y Condicionales
// GUÍA: Scilab for very beginners (Página 18)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== SIMULACIÓN DEL JUEGO DE DADOS DE ALICIA ===");

// 1. Simulación del lanzamiento de 3 dados de 6 caras (enteros del 1 al 6)
// grand(1, 3, "uin", 1, 6) genera un vector fila (1x3) con distribución uniforme entera
D = grand(1, 3, "uin", 1, 6);
disp(D, "Valores obtenidos en los tres dados (D):");

// 2. Estructura condicional para calcular las ganancias W (Winnings)
if D == [6, 6, 6] then
    // Si obtiene tres 6, gana $20
    W = 20;
elseif length(unique(D)) == 1 then
    // Si obtiene tres valores iguales distintos de 6, gana $10
    // (unique(D) devuelve un vector sin repetidos; si su longitud es 1, los 3 dados son iguales)
    W = 10;
elseif length(unique(D)) == 2 then
    // Si obtiene exactamente dos valores iguales, gana $5
    // (si unique(D) devuelve 2 elementos, significa que 2 dados coinciden y 1 es distinto)
    W = 5;
else
    // En cualquier otro caso (tres dados con números diferentes), no gana nada
    W = 0;
end

// 3. Muestra el resultado final concatenando texto y valor convertido
disp("Alice wins " + string(W) + " dollars");