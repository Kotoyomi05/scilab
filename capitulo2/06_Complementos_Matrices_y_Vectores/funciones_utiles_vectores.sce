// ============================================================================
// ARCHIVO: funciones_utiles_vectores.sce
// CAPÍTULO 2: Programación - Complementos sobre matrices y vectores
// GUÍA: Scilab for very beginners (Página 26)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. FUNCIONES BÁSICAS DE MANIPULACIÓN DE VECTORES ===");

// Vector de prueba con datos desordenados y duplicados
v = [4, 2, 8, 2, 5, 1, 8];
disp(v, "Vector original v:");

// gsort(): Ordena los elementos del vector (por defecto en orden descendente)
v_desc = gsort(v);
disp(v_desc, "Vector ordenado descendentemente con gsort(v):");

// length(): Devuelve la cantidad total de elementos en el vector
l = length(v);
disp(l, "Número de elementos en v con length(v):");

// sum() y prod(): Calculan la suma y el producto de todos los elementos
s = sum(v);
p = prod(v);
disp(s, "Suma total de elementos con sum(v):");
disp(p, "Producto de todos los elementos con prod(v):");

disp(" ");
disp("=== 2. FILTRADO DE ELEMENTOS ÚNICOS ===");
// unique(): Elimina los elementos repetidos y devuelve un vector ordenado ascendentemente
v_unicos = unique(v);
disp(v_unicos, "Elementos únicos sin duplicados con unique(v):");

disp(" ");
disp("=== 3. BÚSQUEDA DE ÍNDICES CON FIND() ===");
// find(): Devuelve las posiciones (índices) de los elementos que cumplen una condición booleana
// Ejemplo: Buscar los índices de los elementos de 'v' que son mayores a 3
indices = find(v > 3);
disp(indices, "Índices de los elementos mayores a 3 con find(v > 3):");

// Extraer los valores que cumplen la condición utilizando los índices encontrados
valores_filtrados = v(indices);
disp(valores_filtrados, "Valores correspondientes a esos índices v(find(v > 3)):");