# Capítulo 2: Programación en Scilab

Este módulo cubre los fundamentos de programación, estructuras de control, manejo de matrices, graficación 2D/3D y resolución de ecuaciones diferenciales utilizando **Scilab**.

Guía de referencia: *Scilab for very beginners* (Capítulo 2)[cite: 1].

---

## 📂 Estructura del Capítulo

La carpeta está organizada por temas específicos, cada uno con scripts ejecutable (`.sce`):

| Carpeta | Descripción |
| :--- | :--- |
| `01_Variables_Asignacion_y_Visualizacion/` | Definición de variables, constantes (`%pi`, `%e`), funciones de usuario y salida con `disp()`. |
| `02_Bucles/` | Estructuras repetitivas (`for`, `while`) e incrementos con el operador `:`. |
| `03_Pruebas_y_Condicionales/` | Operadores lógicos y estructuras de decisión (`if - elseif - else`). |
| `04_Graficos_2D_y_3D/` | Gráficos en el plano (`plot`), superficies 3D (`surf`) y curvas espaciales (`param3d`). |
| `05_Simulaciones_y_Estadistica/` | Generación de números aleatorios (`grand`) y diagramas de barras (`bar`). |
| `06_Complementos_Matrices_y_Vectores/` | Operaciones elemento a elemento (`.*`, `./`), transposición, sistemas lineales (`\`) y funciones de búsqueda/ordenamiento (`find`, `gsort`, `unique`). |
| `07_Precision_de_Calculo/` | Evaluación de precisión numérica con `%eps` y ajuste de visualización con `format()`. |
| `08_Ecuaciones_Diferenciales/` | Resolución de sistemas de ecuaciones diferenciales de primer y segundo orden con `ode()`. |

---

## 🧠 Conceptos Clave del Capítulo

1. **Vectores y Matrices como Base:**  
   En Scilab todo cálculo se realiza mediante matrices (un escalar es una matriz de $1 \times 1$)[cite: 1].
2. **Operaciones Elemento a Elemento vs. Matriciales:**  
   - `*` y `/` son operaciones matriciales algebraicas[cite: 1].
   - `.*` y `./` aplican la operación a cada elemento individual de la matriz/vector[cite: 1].
3. **Sistemas de Ecuaciones Lineales:**  
   Para resolver $A \cdot X = Y$, se utiliza el operador *backslash*: `X = A \ Y`[cite: 1].
4. **Resolución de EDOs (`ode`):**  
   Las ecuaciones diferenciales de orden superior deben reducirse a un sistema de ecuaciones diferenciales de primer orden antes de pasar a la función `ode(y0, t0, t, f)`[cite: 1].

---

## 🚀 Cómo ejecutar los Scripts (`.sce`)

### Desde Scilab (Consola / SciNotes)
1. Abre Scilab.
2. Navega a la carpeta correspondiente usando el explorador de archivos interno.
3. Ejecuta el archivo mediante la consola o la opción **Execute** en SciNotes (`Ctrl + Shift + E`)[cite: 1].

### Desde Visual Studio Code
1. Abre la carpeta del repositorio en VS Code.
2. Abre el archivo `.sce` que deseas probar.
3. Copia el contenido del script y pégalo en la consola interactiva de Scilab o ejecuta el script con el comando configurado para tu terminal.

---

## 📝 Notas de Precisión Numérica
Tener en cuenta que Scilab utiliza representación en punto flotante con una precisión relativa cercana a `%eps ≈ 2.22e-16`[cite: 1]. Para comparaciones lógicas de valores flotantes, se recomienda evaluar tolerancias relativas en lugar de usar comparaciones directas de igualdad (`==`)[cite: 1].