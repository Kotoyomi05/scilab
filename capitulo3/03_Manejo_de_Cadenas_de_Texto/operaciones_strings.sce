// ============================================================================
// ARCHIVO: operaciones_strings.sce
// CAPÍTULO 3: Funciones útiles de gestión - Cadenas de Texto
// GUÍA: Scilab for very beginners (Páginas 31 y 32)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. CONCATENACIÓN Y CONVERSIÓN CON STRING() Y EVSTR() ===");
nombre = "Scilab";
version_num = 2025; // Número

// string(): Convierte valores numéricos a cadenas de texto para poder concatenar
mensaje = "Bienvenido a " + nombre + " versión " + string(version_num);
disp(mensaje, "Cadena concatenada:");

// evstr(): Evalúa una cadena de texto que contiene una expresión matemática
expresion_texto = "2 * 3.14159 * 5";
resultado_num = evstr(expresion_texto);
disp(expresion_texto, "Expresión en texto:");
disp(resultado_num, "Resultado evaluado numéricamente con evstr():");

disp(" ");
disp("=== 2. EXTRACTION Y TRANSFORMACIÓN DE CADENAS ===");
texto_base = "Ingenieria de Software";

// part(cadena, indices): Extrae caracteres específicos por posición
subcadena = part(texto_base, 1:10); // Extrae del carácter 1 al 10
disp(subcadena, "Primeros 10 caracteres con part():");

// convstr(cadena, 'u' | 'l'): Convierte a mayúsculas ('u' = upper) o minúsculas ('l' = lower)
mayusculas = convstr(texto_base, "u");
minusculas = convstr(texto_base, "l");
disp(mayusculas, "En mayúsculas con convstr(..., 'u'):");
disp(minusculas, "En minúsculas con convstr(..., 'l'):");

disp(" ");
disp("=== 3. BÚSQUEDA DE SUBCADENAS CON STRINDEX() ===");
// strindex(cadena, patron) devuelve los índices iniciales donde se encuentra el patrón
frase = "Scilab es potente y Scilab es facil de usar";
posiciones = strindex(frase, "Scilab");
disp(posiciones, "Posiciones de la palabra 'Scilab' en la frase (strindex):");