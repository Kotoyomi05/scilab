// ============================================================================
// ARCHIVO: interaccion_usuario_input.sce
// CAPÍTULO 3: Funciones útiles de gestión - Entrada/Salida e Interacción
// GUÍA: Scilab for very beginners (Página 33)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. CAPTURA DE DATOS NUMÉRICOS CON INPUT() ===");
// input("mensaje") evalúa lo que el usuario escribe como número o expresión matemática
// (Por ejemplo: el usuario puede ingresar 45 o 2*pi)
disp("Solicitando entrada numérica...");

// NOTA: Al ejecutar en SciNotes/Consola, el programa esperará la entrada del usuario.
// Para este script de demostración asignamos una lectura con valor por defecto si se presiona Enter.
num_ingresado = input("Ingrese la edad del usuario (o presione Enter): ");

if isempty(num_ingresado) then
    num_ingresado = 20; // Valor de respaldo para ejecución automática
    disp("No se ingresó valor. Se asignó por defecto: " + string(num_ingresado));
else
    disp("Número ingresado correctamente: " + string(num_ingresado));
end

disp(" ");
disp("=== 2. CAPTURA DE CADENAS DE TEXTO CON INPUT(..., 'string') ===");
// El segundo argumento "string" (o "s") fuerza a que la entrada sea tratada como texto plano,
// evitando errores de sintaxis si el usuario escribe caracteres o espacios.
nombre_usuario = input("Ingrese su nombre (o presione Enter): ", "string");

if nombre_usuario == "" then
    nombre_usuario = "Usuario Scilab"; // Valor de respaldo
    disp("No se ingresó texto. Nombre por defecto: " + nombre_usuario);
else
    disp("Hola, " + nombre_usuario + "! Bienvenido al entorno de Scilab.");
end

disp(" ");
disp("=== 3. CÁLCULO PROCESADO CON LA ENTRADA DE USUARIO ===");
// Procesamiento simple combinando los datos ingresados
anio_actual = 2026;
anio_nacimiento = anio_actual - num_ingresado;

disp("--- RESUMEN DE PROCESAMIENTO ---");
disp("Usuario: " + nombre_usuario);
disp("Año estimado de nacimiento: " + string(anio_nacimiento));