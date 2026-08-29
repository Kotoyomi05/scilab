// ============================================================================
// ARCHIVO: guardar_y_cargar_datos.sce
// CAPÍTULO 3: Funciones útiles de gestión - Entrada/Salida y Persistencia
// GUÍA: Scilab for very beginners (Páginas 32 y 33)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. CREACIÓN DE DATOS PARA PERSISTENCIA ===");
// Creamos variables de distintas estructuras
matriz_resultados = [10.5, 20.3, 30.8; 40.1, 50.6, 60.2];
nombre_experimento = "Simulacion_Vuelo_01";
timestamp_ejecucion = 2026;

disp("Variables creadas en memoria:");
whos;

disp(" ");
disp("=== 2. GUARDADO DE VARIABLES EN ARCHIVO BINARIO (.SOD) ===");
// Definimos el nombre del archivo de salida
archivo_datos = "datos_experimento.sod";

// save() guarda variables seleccionadas preserving su tipo y precisión de punto flotante
save(archivo_datos, "matriz_resultados", "nombre_experimento");
disp("Variables 'matriz_resultados' y 'nombre_experimento' guardadas en: " + archivo_datos);

disp(" ");
disp("=== 3. LIMPIEZA Y RECUPERACIÓN DE DATOS CON LOAD() ===");
// Borramos todo de la memoria para verificar la carga desde el archivo
clear;
disp("Memoria limpiada. Variables actuales en el espacio de trabajo:");
who;

// load() restaura las variables guardadas previamente
archivo_datos = "datos_experimento.sod";
load(archivo_datos);

disp(" ");
disp("Variables restauradas con éxito mediante load():");
whos;

disp(nombre_experimento, "Nombre del experimento restaurado:");
disp(matriz_resultados, "Matriz de resultados restaurada:");