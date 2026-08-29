// ============================================================================
// ARCHIVO: administracion_memoria.sce
// CAPÍTULO 3: Funciones útiles de gestión - Gestión de Variables
// GUÍA: Scilab for very beginners (Página 29)
// ============================================================================

clc;    // Limpia la pantalla de la consola
clear;  // Garantiza un entorno de memoria limpio al inicio

disp("=== 1. CREACIÓN DE VARIABLES DE PRUEBA ===");
// Declaración de variables de distintos tipos de datos
a = 42;                             // Escalar entero/flotante
matriz_A = [1 2 3; 4 5 6];          // Matriz de 2x3
texto = "Scilab para principiantes"; // Cadena de texto (string)
v_booleano = [%T, %F, %T];          // Vector de booleanos

disp("Variables creadas exitosamente en la memoria.");

disp(" ");
disp("=== 2. LISTADO DE VARIABLES CON WHO Y WHOS ===");
// 'who' muestra los nombres de las variables definidas actualmente
disp("--- Nombres de variables activas (who) ---");
who;

disp(" ");
// 'whos' muestra información detallada: Nombre, Tipo, Dimensiones y Bytes ocupados
disp("--- Detalle de variables activas (whos) ---");
whos;

disp(" ");
disp("=== 3. ELIMINACIÓN SELECTIVA Y TOTAL DE VARIABLES ===");
// Se puede eliminar una variable específica indicando su nombre
clear a;
disp("Se ha eliminado la variable 'a'.");

// Verificación con exists(): retorna 1 si la variable existe, 0 si no
if exists("a") == 0 then
    disp("Confirmado: la variable 'a' ya no existe en memoria.");
end

// clear por sí solo elimina todas las variables definidas por el usuario
clear;
disp("Se han limpiado todas las variables del entorno.");