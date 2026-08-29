// ============================================================================
// ARCHIVO: resolucion_ode.sce
// CAPÍTULO 2: Programación - Ecuaciones Diferenciales Ordinarias (ODE)
// GUÍA: Scilab for very beginners (Página 28)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== RESOLUCIÓN NUMÉRICA DE EDO CON ODE() ===");

// 1. Definición de la función EDO: dy/dt = f(t, y)
// La firma requerida por Scilab es f(t, y)
function dydt = f(t, y)
    dydt = -2 * y;
endfunction

// 2. Condición inicial y vector de tiempo
y0 = 1;                  // Condición inicial: y(0) = 1
t0 = 0;                  // Tiempo inicial: t0 = 0
t = linspace(0, 3, 100); // Tiempos de evaluación: 100 puntos entre t=0 y t=3

// 3. Resolución numérica mediante ode()
// Sintaxis básica: y_sol = ode(y0, t0, t, f)
y_sol = ode(y0, t0, t, f);

// 4. Graficación del resultado numérico frente a la solución exacta
y_exacta = exp(-2 * t);  // Solución analítica para comparación

clf;
plot(t, y_sol, "r-");        // Solución numérica (línea continua roja)
plot(t, y_exacta, "k--");    // Solución analítica (línea discontinua negra)

xtitle("Resolución de la EDO dy/dt = -2y", "Tiempo (t)", "y(t)");
hl = legend(["Solución Numérica (ode)"; "Solución Analítica (e^-2t)"]);