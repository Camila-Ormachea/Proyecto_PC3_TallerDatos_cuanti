# Análisis sobre participación ciudadana utilizando datos de la ENAHO
##Descripción del proyecto: 
Este repositorio incluye el código y el flujo de trabajo completo del "Informe sobre los determinantes socioeconómicos de la participación ciudadana en el Perú" elaborado para el curso de Taller de procesamiento de datos 2026-1 de la PUCP.
Se utilizan datos de la Encuesta Nacional de Hogares (ENAHO) de 2021 a 2025 trabajados en R. 

El análisis explora la relación entre las siguientes dimensiones:
**Demográficas**: quintiles de ingreso, grupos de edad, nivel educativo, ubicación geográfica
**Institucionales y de seguridad social**: Acceso a la salud (aseguramiento, gasto de bolsillo)

## Programas y librerías utilizadas
El proyecto está desarrollado utilizando la versión 4.4.1 de **R**, con las siguientes librerías:
* ´tidyverse´: para el procesamiento y gráficos (dplyr y ggplot2)
* ´rio´: importación de datos
* ´arrow´: exportación e importación de bases de datos en formato parquet
* ´janitor´: limpieza de nombres de la ENAHO
  La versión de todas las librerías se controla utilizando ´renv´

## Estructura del directorio
El directorio se organiza a través de la siguiente estructura de carpetas: 
├── Creación_R_Project/    # Script general: Configuración del entorno, creación de carpetas y enlace a GitHub
├── datos/                 # Módulos originales de la ENAHO en formato .csv
├ ├── crudos/              # Bases maestras procesadas en formato .parquet (Output de scripts 01 y 02)
  ├── limpios/
├── scripts/
├ ├── 01_Importar_modulos_ENAHO.R         # Carga masiva y cruce (merge) de los módulos 300 ,400, 500 y Participación ciudadana
  ├── 02_Limpieza_ENAHO.R         # Limpieza, recodificación y creación de variables 
  ├── 03_Exploración.R      # Análisis descriptivo y generación de crecues bivariados
  ├── 04_Informe_Final.Rmd  # Código fuente dinámico para la elabración del reporte
├── resultados/             # Outputs finales: tablas, gráficos descriptivos y el informe en .pdf
├── renv/                   # Carpeta aislada del entorno local de paquetes 
renv.lock                   # "Cápsula del tiempo": Registro de las versiones de las librerías
