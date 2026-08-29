// ============================================================================
// ARCHIVO: operaciones_sistema_archivos.sce
// CAPÍTULO 3: Funciones útiles de gestión - Archivos y Directorios
// GUÍA: Scilab for very beginners (Páginas 30 y 31)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. CONSULTA Y NAVEGACIÓN DE DIRECTORIOS ===");
// pwd (Print Working Directory) devuelve la ruta del directorio de trabajo actual
ruta_actual = pwd();
disp("Directorio de trabajo actual (pwd):");
disp(ruta_actual);

// cd (Change Directory) permite cambiar la ruta de trabajo.
// Usamos "." para mantenernos en el directorio actual a modo de demostración.
cd(".");
disp("Se ha confirmado la ruta actual con cd("'.'").");

disp(" ");
disp("=== 2. LISTADO DE ARCHIVOS Y DIRECTORIOS ===");
// dir() devuelve una estructura de tipo 'dir' con metadatos de los archivos
// (nombre, fecha, tamaño, si es directorio o archivo).
archivos_info = dir();
disp("Listado de elementos en el directorio (dir):");
disp(archivos_info.name);

disp(" ");
// ls() devuelve directamente un vector de cadenas de texto con los nombres de archivos
lista_archivos = ls();
disp("Nombres de archivos obtenidos con ls():");
disp(lista_archivos);

disp(" ");
disp("=== 3. CONSTRUCCIÓN PORTABLE DE RUTAS CON FULLFILE ===");
// fullfile une carpetas y nombres de archivo agregando el separador correcto
// según el sistema operativo (backslash \ en Windows, slash / en Linux/macOS).
ruta_compatible = fullfile("Capitulo_03_Gestion_y_Entorno", "02_Gestion_de_Archivos_y_Directorios", "mi_archivo.txt");
disp("Ruta construida de forma portable con fullfile():");
disp(ruta_compatible);