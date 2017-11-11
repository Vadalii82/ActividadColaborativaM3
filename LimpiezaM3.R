#establecemos directorio de trabajo
setwd("C:/Users/danza/Desktop/Master Big Data Telefonica/Mod 3/Actividad_Colaborativa")

##Creación de un directorio para los "datos" y otro para los "script"
dir.create("./datos")
dir.create("./script")

#Descarga del dataset en la carpeta "datos"
fileUrl <- "http://www.datosabiertos.jcyl.es/web/jcyl/risp/es/sector-publico/convocatoriaspublicas/1284165772128.csv"
download.file(fileUrl,destfile="./datos/convocatoria.csv",method="auto")

#Creo un dataframe con el contenido del dataset, descartando la primera linea
con <- file("./datos/convocatoria.csv","r")
convoc <- read.csv2(con,skip=1,skipNul = FALSE)
close(con)

#Guardo la fecha de descarga para que el codigo sea reproducible
fechaDescarga <- date()
fechaDescarga

#Abro el dataset para ver que necesita limpiar
View(convoc)

#Sustituir todos los valores "" por NA
is.na(convoc) <- convoc==''


