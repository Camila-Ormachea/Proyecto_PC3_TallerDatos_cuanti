# Análisis sobre participación ciudadana utilizando datos de la ENAHO
## Descripción del proyecto: 
Este repositorio incluye el código y el flujo de trabajo inicial para el "Análisis sobre los determinantes socioeconómicos de la participación ciudadana en el Perú" elaborado para el curso de Taller de procesamiento de datos 2026-1 de la PUCP.
Se utilizan datos de la Encuesta Nacional de Hogares (ENAHO) de 2021 a 2025 trabajados en R. 

Los módulos utilizados son los siguientes:
* Módulo 300: Educación
* Módulo 400: Salud
* Módulo 500: Empleo e ingresos
* Módulo 800B: Participación Ciudadana

El análisis explora la relación entre las siguientes dimensiones:
* Demográficas: quintiles de ingreso, grupos de edad, nivel educativo, ubicación geográfica
* Institucionales y de seguridad social: acceso a la salud, acceso a la educación y pertenencia a alguna agrupación, organización y/o asociación política

## Programas y librerías utilizadas
El proyecto está desarrollado utilizando la versión 4.4.1 de **R**, con las siguientes librerías:
* Tidyverse: para el procesamiento y gráficos (dplyr y ggplot2)
* Usethis: para la automatización y configuración inicial del proyecto en GitHub
* Rio: importación de datos
* Arrow: exportación e importación de bases de datos en formato parquet
* Janitor: limpieza de nombres de la ENAHO
* Stringr: para remover los espacios en blanco
* Readr: para la lectura de los datos en csv separados por comas´

La versión de todas las librerías se controla utilizando ´renv´

## Estructura del directorio
El directorio se organiza a través de la siguiente estructura de carpetas: 
* Creación y enlace Git.R       # Script general: Configuración del entorno, creación de carpetas y enlace a Github
* datos/
    * crudos/                   # Módulos originales de la ENAHO en formato .csv
    * limpios/                  # Bases maestras procesadas en formato .parquet (Output de scripts 01 y 02)
* scripts/
    * 01_Carga_union_modulos     # Carga masiva y cruce (merge) de los módulos 300, 400, 500 y de Participación ciudadana
* docs/                         # La carpeta de documentación teórica y metodológica del proyecto
* renv/                         # Carpeta aislada del entorno local de paquetes
* renv.lock                     # "Cápsula del tiempo": Registro de las versiones de las librerías
* gigitnore                     # Configuración de exclusión para evitar la subida de datos masivos al repositorio
* [Proyecto_PC3_TallerDatos_cuanti].Rproj # Archivo de inicialización del entorno R    
