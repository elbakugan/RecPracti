getwd()
nuevo_dir = "c:/RecuperacionPracticas"
setwd(nuevo_dir)

if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ",nuevo_dir, "\n")
} else{
  cat ("Fallo al crear Directorio: ",nuevo_dir, "\n")
}

set.seed(25) 
registros = 10

#Ejercicio1
edades_descubrimientos = sample(1:150,registros,replace=TRUE)
print(edades_descubrimientos)
media <- mean(edades_descubrimientos)
print(media)

#Ejercicio2
cantidades_artefactos = sample(1:150,registros,replace=TRUE)
print(cantidades_artefactos)
sum(cantidades_artefactos)

#Ejercicio3
profundidad_hallazgos = sample(1:150,registros,replace=TRUE)
print(profundidad_hallazgos)
max(profundidad_hallazgos)

#Ejercicio4
materiales_encontrados = sample(c("Hueso", "Madera", "Vidrio", "Cerámica"))
length(materiales_encontrados)

#Ejercicio5
años_excavaciones = sample(1:150,registros,replace=TRUE)
print(años_excavaciones)
length(años_excavaciones)

#Ejercicio6
excavaciones_matriz = matrix(c(2,4,6,8,10,12), nrow=2, byrow=TRUE)
print(excavaciones_matriz)
año_max_excavaciones = which.max(rowSums(excavaciones_matriz))

#Ejercicio7
edades_por_region = matrix(c(2,4,6,8,10,12), nrow=2, byrow=TRUE)
print(edades_por_region)
region_antigua = which.min(colMeans(edades_por_region))

#Ejercicio8
artefactos_por_periodo = matrix(c(100,150,200,250,300,350), nrow=2, byrow=TRUE)
print(artefactos_por_periodo)
periodo_max_artefactos = which.max(colSums(artefactos_por_periodo))

#Ejercico9
profundidad_por_sitio = matrix(c(2,4,6,8,10,12), nrow=2, byrow=TRUE)
print(profundidad_por_sitio)
sitio_menor_profundidad = which.min(rowMeans(profundidad_por_sitio))
print(sitio_menor_profundidad)

#Ejercicio10
tipos_materiales = matrix(c(100,150,200,250,300,350), nrow=2, byrow=TRUE)
print(tipos_materiales)
material_mas_comun = which.max(colSums(tipos_materiales))
print(material_mas_comun)

#Ejercicio11
yacimiento = sample(c("Yacimiento1", "Yacimiento2", "Yacimiento3"), registros, replace=TRUE)
tipo_artefacto = sample(c("Recipiente", "Lítica", "Ornamento" ), registros, replace=TRUE)
fecha_descubrimiento = sample(1:150,registros, replace=TRUE)
descripcion = sample(c("Cerámica", "Flecha", "Funerario"), registros, replace=TRUE)

registro_artefactos = data.frame(
  Yacimiento = yacimiento, 
  Tipoart = tipo_artefacto,
  Fecha = fecha_descubrimiento,
  Desc = descripcion
)
print(registro_artefactos)

#Ejercicio12
equipo = sample(c("Equipo1", "Equipo2", "Equipo3"), registros, replace=TRUE)
yacimiento = sample(c("Yacimiento1", "Yacimiento2", "Yacimiento3"), registros, replace=TRUE)
fecha_inicio = sample(1:150,registros, replace=TRUE)
fecha_fin= sample(150:175,registros, replace=TRUE)

excavaciones_equipo=data.frame(
  equipo = equipo,
  yacimiento = yacimiento, 
  Tipoart = tipo_artefacto,
  fechainic = fecha_inicio,
  fin = fecha_fin
)
print(excavaciones_equipo)

#Ejercicio13
yacimiento = sample(c("Yacimiento1", "Yacimiento2", "Yacimiento3"), registros, replace=TRUE)
edad = sample(1:40,registros, replace=TRUE)
sexo = sample(c("hombre","mujer"),registros, replace=TRUE)
descripcion = sample(c("recien nacido", "cráneo", "incompleto"), registros, replace=TRUE)

datos_esqueletos = data.frame(
  yacimiento = yacimiento, 
  edad = edad, 
  sexo = sexo, 
  descripcion = descripcion
)

print(datos_esqueletos)

#Ejercicio14
yacimiento = sample(c("Yacimiento1", "Yacimiento2", "Yacimiento3"), registros, replace=TRUE)
altitud = sample (1:3000,registros, replace=TRUE)
longitud = sample(0:180,registros, replace=TRUE)
latitud= sample(0:90,registros, replace=TRUE)

ubicaciones_geograficas=data.frame(
  yacimiento = yacimiento, 
  altitud = altitud, 
  longitud = longitud, 
  latitud = latitud
)
print(ubicaciones_geograficas)













