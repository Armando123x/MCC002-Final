# Análisis estadístico y predictivo del riesgo crediticio

Trabajo final del curso **MCC002 — Probabilidad y Estadística Computacional**, desarrollado por el Grupo 5 de la Maestría en Ciencia de la Computación de la Universidad Nacional de Ingeniería.

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

* Armando Castro Chaupis
* Henry Sánchez Alvarado
* Alex Segura Núñez

## Descripción

El proyecto analiza los factores asociados con la clasificación de un solicitante como buen o mal riesgo crediticio.

Se emplean técnicas de estadística descriptiva, inferencia frecuentista, regresión logística, validación predictiva e inferencia bayesiana. Además, se estudia el efecto de utilizar distintos umbrales de clasificación, considerando que los errores crediticios pueden tener costos diferentes.

## Pregunta de investigación

> ¿Qué factores explican la probabilidad de que un solicitante sea clasificado como mal riesgo crediticio?

## Objetivo

Desarrollar un análisis estadístico reproducible que permita identificar variables asociadas con el riesgo crediticio, cuantificar la incertidumbre de las estimaciones y evaluar el desempeño de un modelo de clasificación.

## Datos

El proyecto utiliza el conjunto de datos **Statlog German Credit Data**, disponible en el UCI Machine Learning Repository.

El dataset contiene información financiera, personal y crediticia de solicitantes clasificados como buenos o malos riesgos.

La descripción de las variables, su codificación y las decisiones de preparación de los datos se documentan dentro del notebook principal.

## Metodología

El trabajo comprende las siguientes etapas:

1. Carga, validación y preparación de los datos.
2. Análisis exploratorio y visualización.
3. Estimación de intervalos de confianza.
4. Pruebas de hipótesis y tamaños de efecto.
5. Ajuste e interpretación de una regresión logística.
6. Evaluación mediante matriz de confusión, ROC-AUC y validación cruzada.
7. Comparación de umbrales bajo costos asimétricos.
8. Estimación bayesiana de la proporción de malos créditos.
9. Comparación de resultados frecuentistas y bayesianos.

## Estructura del repositorio

```text
MCC002-Final/
├── README.md
├── requirements.txt
├── data/
├── notebook/
│   └── MCC002_Grupo5_Notebook.ipynb
├── informe/
├── presentacion/
├── resultados/
│   ├── figuras/
│   └── tablas/
└── archivo/
```

* `data/`: datos utilizados en el análisis.
* `notebook/`: desarrollo estadístico y computacional completo.
* `informe/`: informe académico y versión final en PDF.
* `presentacion/`: diapositivas de la sustentación.
* `resultados/`: tablas y figuras exportadas.
* `archivo/`: versiones anteriores conservadas como referencia.

## Ejecución

Crear y activar un entorno virtual:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

Instalar las dependencias:

```powershell
python -m pip install --upgrade pip
pip install -r requirements.txt
```

Abrir el notebook:

```powershell
jupyter notebook "notebook\MCC002_Grupo5_Notebook.ipynb"
```

El notebook debe poder ejecutarse de principio a fin y reproducir los resultados presentados en el informe.

## Entregables

* Notebook ejecutable.
* Informe académico en PDF.
* Presentación para la sustentación.
* Declaración individual de contribución.
* Declaración de uso de inteligencia artificial.

## Información académica

* **Universidad:** Universidad Nacional de Ingeniería
* **Facultad:** Facultad de Ciencias
* **Programa:** Maestría en Ciencia de la Computación
* **Curso:** MCC002 — Probabilidad y Estadística Computacional
* **Periodo académico:** 2026-1
* **Grupo:** Grupo 5
