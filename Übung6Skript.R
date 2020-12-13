#Computergestützte Methoden WiSe2020/21 Übung Nr.6

#Aufgabe Nr.1

set.seed(1);
x<-c(rnorm(500), rnorm(500, mean =5, sd = 4))
#a)
hist(x, freq =F)

#b)
hist(x, freq =F, xlim =c(-10, 20), ylim =c(0, 0.2))
par(new = T) #kein neuer Plot
plot(density(x), col ="red", xlim =c(-10, 20), ylim = c(0,0.2), xlab ="", main ="")

#c)
data<-read.csv2("/Users/Robert_Hennings/Dokumente/Uni/5.Semester/Computergestütze Methoden/RProgramme/usa.csv")
head(data)
#Neue Spalte mit den logarithmierten Einkommen hinzufügen
#Nicht nötig, hatte ich bereits getan als "lwr" bezeichnet

hist(data$lwr, freq =F, xlim =c(0,7), ylim =c(0, 0.7))
par(new = T) #Kein neuer Plot
plot(density(data$lwr), col ="red", main ="", xlim =c(0,7), ylim =c(0,0.7),xlab ="")


#Aufgabe Nr.2
set.seed(1);
x<-c(rnorm(700,60,25), rnorm(300,120,60))
#X Werte abschätzen zum angeben in xlim =c(..)
max(x) #310
min(x) #-60
#Übersicht zum Abschätzen der dichteparameter
density(x)

#a)
hist(x, freq=F, xlim =c(-60,310), ylim =c(0,0.012))

#b)
hist(x, freq=F, xlim =c(-60,310), ylim =c(0,0.012))
par(new=T)
plot(density(x, kernel = "triangular"), col ="red", main="", xlab="",xlim =c(-60,310), ylim =c(0,0.012), lwd=2)

#c)

b<-hist(x, freq=F,xlim =c(-60,310), ylim =c(0,0.012))$density[4] #x=75 ist im 4.Intervall
b

#c)
a<-which.min(abs(density(x)$x-75));a
density(x)$y[a]

#d)
hist(x, freq=F, xlim =c(-60,310), ylim =c(0,0.012))
par(new=T)
plot(density(x, kernel = "triangular"), col ="red", main="", xlab="",xlim =c(-60,310), ylim =c(0,0.012), lwd=2)

x1<-seq(min(x), max(x), 0.1)
lines(x1, dmorm(x1, mean(x), sd(x))), col ="green", lwd=2)
