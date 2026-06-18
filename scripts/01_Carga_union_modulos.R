#==============================================================================
#Proyecto: Análisis usando la ENAHO
#Script: Cargar los módulos y hacer los joints
#Autora: Camila Ormachea
#Fecha: 17-06-2026
#==============================================================================

#1.Carga de librerías------------------------------------------------------
library(rio)
library(tidyverse)
library(janitor)
library(readr)
renv::snapshot()
install_formats()

#2. Importar datos-------------------
mod300 <- import("datos/crudos/Enaho01A-2025-300.csv", encoding = "Latin-1") 
mod12 <- import("datos/crudos/Enaho01-2025-606.csv", encoding = "Latin-1")

#3. 



