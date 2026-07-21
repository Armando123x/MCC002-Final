# Riesgo y predicción cuantitativa

## Análisis estadístico y predictivo del riesgo crediticio

Trabajo Práctico Final Integrador del curso **MCC002 — Probabilidad y Estadística Computacional**, desarrollado por el **Grupo 5** de la Maestría en Ciencia de la Computación, mención Computación Científica, de la Facultad de Ciencias de la Universidad Nacional de Ingeniería.

## Información académica

| Campo             | Información                                       |
| ----------------- | ------------------------------------------------- |
| Universidad       | Universidad Nacional de Ingeniería                |
| Facultad          | Facultad de Ciencias                              |
| Programa          | Maestría en Ciencia de la Computación             |
| Mención           | Computación Científica                            |
| Curso             | MCC002 — Probabilidad y Estadística Computacional |
| Docente           | Dra. Rocío Milagros Zorrilla Coz                  |
| Periodo académico | 2026-1                                            |
| Grupo             | Grupo 5                                           |
| Estado            | En desarrollo                                     |

## Integrantes

* **Armando Castro Chaupis**
* **Henry Sánchez Alvarado**
* **Alex Segura Núñez**

Todos los integrantes deben conocer y comprender la totalidad del proyecto, incluido el análisis bayesiano, y estar en capacidad de explicar cualquier sección durante la sustentación oral.

## Descripción del proyecto

El proyecto estudia el problema de la clasificación del riesgo crediticio mediante herramientas de probabilidad, inferencia estadística y modelamiento predictivo.

A partir de información histórica de solicitantes de crédito, se busca identificar qué características están asociadas con una mayor probabilidad de que una persona sea clasificada como **mal riesgo crediticio**.

El análisis no se limita a medir la exactitud de un clasificador. También considera la incertidumbre de las estimaciones, los supuestos estadísticos, la capacidad de generalización del modelo y el costo asimétrico de los errores de clasificación.

## Pregunta de investigación

> **¿Qué factores explican la probabilidad de que un solicitante sea clasificado como mal riesgo crediticio?**

## Preguntas secundarias

1. ¿Cuál es la proporción global de solicitantes clasificados como mal riesgo crediticio y cuál es su intervalo de confianza del 95 %?
2. ¿La tasa de mal crédito difiere según el propósito del préstamo?
3. ¿La duración y el monto del crédito difieren entre buenos y malos riesgos?
4. ¿Qué variables están asociadas con una mayor probabilidad de riesgo crediticio?
5. ¿Cómo cambia el desempeño del modelo al modificar el umbral de decisión?
6. ¿Qué diferencias se observan entre la estimación frecuentista y la estimación bayesiana de la tasa de malos créditos?

## Objetivo general

Aplicar de forma integrada las herramientas probabilísticas y estadísticas desarrolladas en el curso para analizar un dataset real de riesgo crediticio y producir conclusiones cuantitativas, reproducibles, interpretables y defendibles.

## Objetivos específicos

1. Documentar el dataset y la codificación original de sus variables.
2. Recodificar de manera explícita la variable respuesta como buen o mal riesgo crediticio.
3. Ejecutar un proceso reproducible de limpieza y preparación de los datos.
4. Describir la distribución de las variables y explorar su relación con la clase de riesgo.
5. Estimar la proporción global de malos créditos mediante métodos frecuentistas.
6. Evaluar diferencias entre grupos mediante pruebas de hipótesis y tamaños de efecto.
7. Ajustar una regresión logística para identificar variables asociadas con el riesgo crediticio.
8. Evaluar el modelo mediante ROC-AUC, matriz de confusión, precision, recall y validación cruzada.
9. Comparar el umbral estándar de 0.50 con un umbral alternativo justificado por costos asimétricos.
10. Desarrollar un análisis bayesiano Beta-Binomial para la tasa de malos créditos.
11. Comparar los resultados bayesianos con los intervalos frecuentistas.
12. Discutir los supuestos, limitaciones y alcances de las conclusiones obtenidas.

## Dataset

El análisis utiliza el dataset:

**Statlog German Credit Data**

Fuente:

**UCI Machine Learning Repository**

El conjunto de datos contiene información financiera, demográfica y crediticia de solicitantes clasificados originalmente como buenos o malos riesgos.

La codificación de la variable respuesta y de las variables categóricas será documentada de manera explícita dentro del notebook. Los códigos categóricos no serán interpretados como cantidades numéricas ni como escalas ordinales, salvo que exista una justificación metodológica.

El archivo utilizado por el proyecto se almacena en:

```text
data/dataset_principal.csv
```

## Metodología

### 1. Preparación de los datos

* Revisión de dimensiones, tipos y valores faltantes.
* Construcción del diccionario de variables.
* Documentación de la codificación original.
* Recodificación de la variable objetivo.
* Preparación de variables categóricas y numéricas.
* Prevención de fuga de información durante el modelamiento.

### 2. Análisis exploratorio

Se desarrollarán estadísticas descriptivas globales y por clase de riesgo, incluyendo:

* media;
* mediana;
* desviación estándar;
* rango intercuartílico;
* asimetría;
* curtosis;
* frecuencias y proporciones para variables categóricas.

El trabajo incluirá al menos seis visualizaciones de calidad académica, entre ellas:

* distribución de la clase de riesgo;
* tasa de mal crédito según propósito del préstamo;
* distribución de la duración del crédito por clase;
* distribución del monto del crédito por clase;
* matriz o gráfico de asociaciones entre variables;
* curva ROC;
* matriz de confusión;
* comparación de distribuciones a priori y posteriores.

### 3. Ajuste paramétrico

Se evaluará el ajuste de una distribución probabilística para una variable continua relevante, como la duración o el monto del crédito.

Los parámetros serán estimados mediante máxima verosimilitud y el ajuste será acompañado por una revisión gráfica y una discusión de sus supuestos.

### 4. Inferencia frecuentista

El análisis incluirá:

* intervalo de confianza analítico del 95 % para la proporción de malos créditos;
* intervalo de confianza mediante bootstrap;
* prueba chi-cuadrado entre clase de riesgo y propósito del préstamo;
* medida de asociación mediante V de Cramér;
* prueba de Welch o Mann–Whitney para comparar duración o monto entre clases;
* tamaño de efecto mediante d de Cohen u otra medida adecuada.

La elección de cada procedimiento será justificada según la escala de las variables, la distribución observada y los supuestos estadísticos.

### 5. Regresión logística

Se ajustará un modelo de regresión logística para estimar la probabilidad de que un solicitante sea clasificado como mal riesgo crediticio.

Se reportarán:

* coeficientes del modelo;
* odds ratios;
* intervalos de confianza;
* significancia estadística;
* variables asociadas con mayor o menor riesgo;
* supuestos y limitaciones de interpretación.

Las asociaciones encontradas no serán interpretadas automáticamente como relaciones causales.

### 6. Evaluación predictiva

El modelo será evaluado mediante:

* ROC-AUC;
* matriz de confusión;
* accuracy;
* precision;
* recall;
* especificidad;
* validación cruzada k-fold;
* estabilidad de las métricas entre particiones.

La accuracy no será utilizada como única medida de desempeño.

### 7. Costos asimétricos y umbral de decisión

Se comparará el umbral convencional de clasificación de 0.50 con un segundo umbral.

La selección del umbral alternativo se justificará considerando que los errores no tienen necesariamente el mismo costo:

* clasificar como buen riesgo a un solicitante que representa un mal riesgo puede producir pérdidas financieras;
* clasificar como mal riesgo a un solicitante solvente puede implicar perder una oportunidad de crédito.

La decisión final deberá equilibrar estos costos y no depender únicamente de la exactitud global.

### 8. Análisis bayesiano

Se empleará un modelo Beta-Binomial para estimar la tasa de malos créditos.

$$
p \sim \operatorname{Beta}(\alpha,\beta)
$$

$$
X \mid p \sim \operatorname{Binomial}(n,p)
$$

La distribución posterior será:

$$
p \mid X=x
\sim
\operatorname{Beta}(\alpha+x,\beta+n-x)
$$

Se calcularán:

* distribución posterior;
* media posterior;
* estimación MAP;
* intervalo creíble del 95 %;
* probabilidad de eventos relevantes;
* sensibilidad frente a la elección del prior.

Se compararán, como mínimo:

* un prior uniforme $\operatorname{Beta}(1,1)$;
* un prior informativo debidamente justificado.

El intervalo creíble bayesiano será comparado con el intervalo de confianza frecuentista de Wilson.

De manera opcional, se podrá implementar un algoritmo Metropolis-Hastings para aproximar la distribución posterior de un coeficiente relevante de la regresión logística.

## Estructura del repositorio

```text
MCC002-Final/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── data/
│   ├── README.md
│   └── dataset_principal.csv
│
├── notebook/
│   └── MCC002_Grupo5_Notebook.ipynb
│
├── informe/
│   ├── MCC002_Grupo5_Informe.docx
│   └── MCC002_Grupo5_Informe.pdf
│
├── presentacion/
│   ├── MCC002_Grupo5_Slides.pptx
│   └── MCC002_Grupo5_Slides.pdf
│
├── resultados/
│   ├── figuras/
│   └── tablas/
│
└── archivo/
    └── final-notebook_inicial.ipynb
```

## Entregables

La entrega final está compuesta por:

1. **Informe académico en PDF**

   ```text
   MCC002_Grupo5_Informe.pdf
   ```

2. **Notebook ejecutable de extremo a extremo**

   ```text
   MCC002_Grupo5_Notebook.ipynb
   ```

3. **Presentación para la sustentación oral**

   ```text
   MCC002_Grupo5_Slides.pdf
   ```

4. **Declaración individual de contribución**

5. **Declaración de uso de inteligencia artificial**

La presentación oral tendrá una duración de 15 minutos, seguida de aproximadamente 10 minutos de preguntas.

## Reproducibilidad

El notebook debe poder ejecutarse de principio a fin sin intervenciones manuales y generar los resultados reportados en el informe.

### Crear el entorno virtual

```powershell
python -m venv .venv
```

### Activar el entorno en Windows

```powershell
.\.venv\Scripts\Activate.ps1
```

### Instalar las dependencias

```powershell
python -m pip install --upgrade pip
pip install -r requirements.txt
```

### Ejecutar el notebook

```powershell
jupyter notebook "notebook\MCC002_Grupo5_Notebook.ipynb"
```

El notebook utilizará semillas aleatorias explícitas para las operaciones que involucren particiones, remuestreo, bootstrap o validación cruzada.

## Uso de inteligencia artificial

Durante el desarrollo podrá utilizarse asistencia de inteligencia artificial para:

* planificación del proyecto;
* revisión de código;
* depuración;
* mejora de redacción;
* revisión de coherencia;
* organización de resultados.

La inteligencia artificial se considera una herramienta de apoyo. Las decisiones metodológicas, la interpretación de los resultados y la responsabilidad académica corresponden al grupo.

Todos los integrantes declaran comprender el contenido del notebook, el informe, la presentación y el análisis bayesiano, y estar en capacidad de explicar cualquier sección del trabajo.

La declaración formal de uso de IA se incluirá como parte de los entregables finales.

## Consideraciones éticas y limitaciones

* Los resultados tienen fines académicos y metodológicos.
* Las asociaciones estadísticas no deben interpretarse automáticamente como causalidad.
* Las conclusiones están condicionadas por la calidad, antigüedad y representatividad del dataset.
* El modelo no debe utilizarse como sistema automático de aprobación o rechazo de créditos.
* Las métricas de desempeño deben analizarse junto con los costos y consecuencias de los errores.
* Deben documentarse las decisiones de limpieza, recodificación, selección de variables y elección del umbral.
* El análisis debe evitar conclusiones discriminatorias o no sustentadas.

## Estado del proyecto

El repositorio se encuentra en desarrollo. Los resultados, figuras, tablas, informe y presentación serán actualizados progresivamente conforme avance el análisis.

---

**Grupo 5 — MCC002, periodo académico 2026-1**
**Facultad de Ciencias — Universidad Nacional de Ingeniería**
