// ============================================================================
// ARCHIVO: superficies_y_curvas_3d.sce
// CAPÍTULO 2: Programación - Gráficos 2D y 3D
// GUÍA: Scilab for very beginners (Páginas 21 y 22)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. GRÁFICO DE SUPERFICIE 3D: PARABOLOIDE ELÍPTICO ===");
// Definición de la función de dos variables z = f(x, y) = 2*x^2 + y^2
function z = f(x, y)
    z = 2*x^2 + y^2;
endfunction

// Creación de las mallas para los ejes X e Y
x = linspace(-1, 1, 100);
y = linspace(-2, 2, 200);

// feval(x, y, f) evalúa f en cada combinación (xi, yj) creando una matriz.
// Se transpone con la comilla simple (') para ajustar las dimensiones necesarias para surf.
z = feval(x, y, f)';

// Limpia la ventana gráfica y dibuja la superficie 3D
clf;
surf(x, y, z);
xtitle("Superficie 3D: Paraboloide Elíptico z = 2x^2 + y^2", "Eje X", "Eje Y", "Eje Z");

disp("Presiona enter en la consola de Scilab o ejecuta la siguiente sección para ver la hélice en 3D...");

disp("=== 2. GRÁFICO DE CURVA PARAMÉTRICA EN EL ESPACIO (HÉLICE 3D) ===");
// Definición del parámetro t de 0 a 4*pi
t = linspace(0, 4*%pi, 100);

// Curva paramétrica: x = cos(t), y = sin(t), z = t
// Limpia la figura previa y grafica la curva espacial con param3d
clf;
param3d(cos(t), sin(t), t);
xtitle("Curva Paramétrica 3D: Hélice (x=cos(t), y=sin(t), z=t)", "Eje X", "Eje Y", "Eje Z");