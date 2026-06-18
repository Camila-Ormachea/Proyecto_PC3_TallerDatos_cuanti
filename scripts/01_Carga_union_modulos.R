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
library(dplyr)
renv::snapshot()
install_formats()

#2. Importar datos-------------------
mod300 <- import("datos/crudos/Enaho01A-2025-300.csv", encoding = "Latin-1") 
mod400 <- import("datos/crudos/Enaho01A-2025-400.csv", encoding = "Latin-1")
mod500 <- import("datos/crudos/Enaho01a-2025-500.csv", encoding = "Latin-1")
mod84 <- import("datos/crudos/Enaho01-2025-800B.csv", encoding = "Latin-1")

#3. Unión de bases de datos

keys_hogar <- c("AÑO", "MES", "CONGLOME", "VIVIENDA", "HOGAR", "UBIGEO", 
                "DOMINIO", "ESTRATO")
keys_personas <- c(keys_hogar, "CODPERSO")

enaho_2025 <- mod400 %>% 
  left_join(mod300, by = keys_personas) %>% 
  left_join(mod500, by = keys_personas) 

keys_pc <-c(keys_hogar, "CODPERSO")

enaho_2025 <- enaho_2025 %>% 
  left_join(mod84, by = keys_pc)

gc()

#4. Exportamos base de datos creada-------------------------------------------
install.packages("arrow")
library(arrow)
renv::snapshot()
write_parquet(enaho_2025, "datos/procesados/enaho_2025_17062026.parquet")

renv::snapshot()




