install.packages("csv", dependencies = T)
install.packages("MASS",dependencies = T)
install.packages("ISLR",dependencies = T)
install.packages("psych", dependencies = T)

library(foreign)
library(csv)
library(ISLR)
library(MASS)
library(psych)

#Cargaos los datos
datos<-read.csv("C:/Users/Daniel/Documents/cursus Udemy/r-estudio/csv/Tema 1/Practica3.csv",header = T)
#Mostramos los datosx
View(datos)
#Ploteamos los datos
plot(datos)
#Mostramos la correlacion que hay entre datos
cor(datos)
#Calculamos la regresion lineal segun el problea para determinar las variables
regresion<-lm(Edad ~ Resistencia , data = datos)
#Mostramos los datos descritivos
summary(regresion)
#Mostramos los inervalos de confianza con un 95%
confint(regresion, level = 0.95)
#Obtenemos la desviacion estandar
sigma(regresion)
#Obtenemos la varianza
sigma(regresion)^2
#Generamos la tabla nova en la cual vienen los grados de libertad para cada muestra 
anova(regresion)
#Obtenemos los coeficienes 
coefficients(regresion)
#Obtenemos las prediciones del modelo
predict(regresion)