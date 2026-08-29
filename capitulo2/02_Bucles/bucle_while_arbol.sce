// ============================================================================
// ARCHIVO: bucle_while_arbol.sce
// CAPÍTULO 2: Programación - Bucles
// GUÍA: Scilab for very beginners (Página 16)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== CÁLCULO DE CRECIMIENTO DE UN ÁRBOL CON BUCLE WHILE ===");

// Condición inicial: En 2005 la altura h es de 1.20 m
h = 1.2;     // Altura inicial del árbol en metros
y = 2005;    // Año inicial

// El bucle evalúa si la altura es menor a 7 metros
while h < 7
    h = h + 0.3;   // El árbol crece 30 cm (0.3 m) por año
    y = y + 1;     // Pasa un año
end

// Muestra el resultado concatenando la cadena de texto con la variable del año
disp("I will cut the tree in " + string(y));