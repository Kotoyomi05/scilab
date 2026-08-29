// ============================================================================
// ARCHIVO: disp_y_cadenas.sce
// CAPÍTULO 2: Programación - Variables, asignación y visualización
// GUÍA: Scilab for very beginners (Páginas 14 y 15)
// ============================================================================

clc;    // Limpia la consola
clear;  // Elimina las variables previas de la memoria

disp("=== 1. DEFINICIÓN DE VECTORES Y MATRICES BÁSICAS ===");
// Los corchetes [] se utilizan para definir matrices.
// - La coma (,) o el espacio separan elementos en una misma fila (columnas).
// - El punto y coma (;) separa filas.

// Vector columna (3x1)
v_col = [3; -2; 5];
disp("Vector columna v_col:");
disp(v_col);

// Vector fila (1x3)
v_fil = [3, -2, 5];
disp("Vector fila v_fil:");
disp(v_fil);

// Matriz de 3x3
m = [1 2 3; 4 5 6; 7 8 9];
disp("Matriz m (3x3):");
disp(m);

disp(" ");
disp("=== 2. ACCESO A ELEMENTOS Y USO DE DISP() ===");
// Para acceder a los elementos de un vector o matriz se usan paréntesis.
// Scilab indexa a partir de 1.
elemento_segundo = v_col(2);

disp("Acceso directo a v_col(2):");
disp(v_col(2));

disp("Uso explícito de disp() sobre la variable extraída:");
disp(elemento_segundo);

disp(" ");
disp("=== 3. MANEJO Y CONCATENACIÓN DE CADENAS DE TEXTO ===");
// Para mostrar un texto plano en consola, este debe ir entre comillas dobles.
disp("Bob won");

// Para combinar texto con valores numéricos, se utiliza la función string() 
// que convierte números a cadenas de texto, utilizando el operador '+' para concatenar.
d = 500;
disp("Bob won " + string(d) + " dollars");

// Si la cadena contiene una comilla simple interna, esta debe duplicarse ('') 
// para que se muestre correctamente en pantalla.
disp("It''s fair");