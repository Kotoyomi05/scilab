// ============================================================================
// ARCHIVO: trazado_puntos_y_segmentos.sce
// CAPÍTULO 2: Programación - Gráficos 2D y 3D
// GUÍA: Scilab for very beginners (Página 19)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

// clf ("clear figure") limpia cualquier gráfico previo de la ventana gráfica actual
clf;

disp("=== 1. TRAZADO DE UN PUNTO INDIVIDUAL ===");
// plot(x, y, "estilo_y_color")
// Dibuja el punto A(1, 2) representado por un punto rojo (".r").
// Colores disponibles: "b" (azul), "k" (negro), "r" (rojo), "g" (verde), "c" (cian), "m" (magenta), "y" (amarillo).
plot(1, 2, ".r");

disp("=== 2. TRAZADO DE UN SEGMENTO DE RECTA ===");
// Para trazar el segmento entre A(1, 2) y B(3, 5):
// Se pasa el vector de coordenadas X ([1, 3]) y el vector de coordenadas Y ([2, 5]).
// Por defecto se grafica en azul y con línea continua.
plot([1, 3], [2, 5]);

// Personalización básica de la figura
xtitle("Trazado de un punto y un segmento", "Eje X", "Eje Y");