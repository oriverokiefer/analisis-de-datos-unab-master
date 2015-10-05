setwd("C:/Users/osvaldo/Downloads/Control/")
file <- paste0(getwd(),"/retornos.csv")
data <- read.csv2(file=file, header = TRUE)
str(data)
names(data)


#install.packages("gridExtra")
#install.packages("Quandl")
#install.packages("reshape")
#install.packages("gridExtra")

library(ggplot2)
#CCU en el tiempo y retornos
qplot(data$FECHA, data$CCU, type="l", xlab="FECHA",ylab="CCU",main="VALOR EN EL TIEMPO")
qplot(data$FECHA, data$RETORNO.CCU, type="l", xlab="FECHA",ylab="RETORNO.CCU",main="VALOR EN EL TIEMPO")
#DESVIACION ESTANDAR
sd(data$RETORNO.CCU)
#regresion
#regresionA <-lm(data$CCU ~ data$RETORNO.CCU)
#summary(regresionA)

regresionD <-lm(data$IGPA ~ data$CCU)
summary(regresionD)


#SM EN EL TIEMPO Y RETORNOS
qplot(data$FECHA, data$SM.chile.b, type="l", xlab="FECHA",ylab="SM.chile.b",main="VALOR EN EL TIEMPO")
qplot(data$FECHA, data$RETORNO.SM, type="l", xlab="FECHA",ylab="RETORNO.SM",main="VALOR EN EL TIEMPO")
#DESVIACION ESTANDAR
sd(data$RETORNO.SM)
#regresionB <-lm(data$SM.chile.b ~ data$RETORNO.SM)
#summary(regresionB)

regresione <-lm(data$IGPA ~ data$SM.chile.b)
summary(regresione)

#RIPLEY EN EL TIEMPO Y RETORNOS
qplot(data$FECHA, data$Ripley, type="l", xlab="FECHA",ylab="Ripley",main="VALOR EN EL TIEMPO")
qplot(data$FECHA, data$RETORNO.RIPLEY, type="l", xlab="FECHA",ylab="RETORNO.RIPLEY",main="VALOR EN EL TIEMPO")
#DESVIACION ESTANDAR
sd(data$RETORNO.RIPLEY)

#regresionC <-lm(data$Ripley ~  data$RETORNO.RIPLEY)
#summary(regresionC)

regresionf <-lm(data$IGPA ~ data$Ripley)
summary(regresionf)
