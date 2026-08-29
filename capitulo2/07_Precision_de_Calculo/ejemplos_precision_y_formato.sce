// ============================================================================
// ARCHIVO: ejemplos_precision_y_formato.sce
// CAPÍTULO 2: Programación - Precisión de cálculo
// GUÍA: Scilab for very beginners (Página 27)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. ÉPSILON DE MÁQUINA (%eps) Y ERROR DE REDONDEO ===");
// %eps representa el número positivo más pequeño tal que 1.0 + %eps > 1.0.
// Muestra el límite numérico de precisión en punto flotante de Scilab.
disp(%eps, "Valor actual de la constante %eps:");

// Ejemplo clásico de imprecisión en punto flotante:
a = 1 + %eps / 2;
b = 1;

disp(a == b, "Evaluación de (1 + %eps/2 == 1):"); 
// Muestra %T porque %eps/2 está por debajo de la precisión representable.

disp(" ");
disp("=== 2. COMPARACIÓN CORRECTA CON TOLERANCIA ===");
// En números reales, nunca se debe usar '==' directamente debido a imprecisiones.
x = sin(%pi); // Teóricamente debería ser 0, pero numéricamente da un valor muy pequeño (~1e-16)

disp(x, "Valor numérico real calculado para sin(%pi):");
disp(x == 0, "Comparación directa sin(%pi) == 0:");

// Forma correcta: Evaluar si el valor absoluto de la diferencia es menor que un margen de tolerancia
tol = 1e-12;
es_cero = abs(x) < tol;
disp(es_cero, "Comparación usando tolerancia (abs(sin(%pi)) < 1e-12):");

disp(" ");
disp("=== 3. FORMATO DE VISUALIZACIÓN CON FORMAT() ===");
// format() cambia la cantidad de dígitos mostrados en la consola (mínimo 2, máximo 25).
// No altera el valor numérico interno guardado en memoria, solo la presentación.

format(25);
disp(%pi, "Visualización de %pi con format(25):");

format(10); // Restablece a la visualización estándar por defecto
disp(%pi, "Visualización de %pi restablecida a format(10):");