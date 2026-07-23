# Base LaTeX — MCC002 Grupo 5

Esta carpeta contiene una estructura inicial para el informe final del Grupo 5
del curso MCC002. El diseño es original y usa un estilo académico británico
minimalista: tipografía serif para el cuerpo, encabezados sobrios, amplio espacio
en blanco y una paleta azul marino con acentos discretos.

## Instalación en el repositorio

1. Copiar la carpeta `informe/` a la raíz de `MCC002-Final`.
2. Abrir el repositorio completo en VS Code.
3. Instalar MiKTeX y la extensión **LaTeX Workshop**.
4. Abrir `informe/main.tex`.
5. Compilar con LaTeX Workshop o ejecutar:

```powershell
cd informe
.\compilar.ps1
```

El PDF se generará en:

```text
informe/build/main.pdf
```

## Compilación manual

```powershell
cd informe
latexmk -pdf -interaction=nonstopmode -synctex=1 -outdir=build main.tex
```

## Limpieza de archivos auxiliares

```powershell
cd informe
.\limpiar.ps1
```

## Estructura del documento

El cuerpo principal contiene las 15 secciones obligatorias de la consigna:

1. Introducción y pregunta de investigación.
2. Descripción y citación del dataset.
3. Diccionario de variables.
4. Limpieza y preprocesamiento.
5. Análisis exploratorio.
6. Estadística descriptiva.
7. Visualizaciones.
8. Análisis de incertidumbre frecuentista.
9. Inferencia estadística frecuentista.
10. Modelo de regresión y diagnóstico.
11. Análisis bayesiano.
12. Interpretación integrada.
13. Limitaciones y validez.
14. Conclusiones.
15. Declaración individual de contribución.

Los anexos incluyen la declaración de uso de IA, resultados complementarios y
la guía de reproducibilidad.

## Figuras

El archivo `configuracion.tex` define la ruta:

```latex
\graphicspath{{../resultados/figuras/}}
```

Por tanto, una figura producida por el notebook se inserta así:

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=\textwidth]{figura_05_ajuste_mle_monto.png}
    \caption{Ajuste paramétrico del monto del crédito.}
    \label{fig:ajuste-mle}
\end{figure}
```

## Git

Agregar los archivos de LaTeX sin incluir los auxiliares:

```powershell
git add informe
git status
git commit -m "docs: add LaTeX report structure"
git push origin henry/desarrollo-estadistica
```

Antes de usar `git add informe`, integrar el contenido de
`.gitignore_latex_snippet.txt` en el `.gitignore` del repositorio.
