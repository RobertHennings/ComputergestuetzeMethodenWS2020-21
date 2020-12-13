#Computergestützte Methoden WiSe2020/21 Übung Nr.2

#Aufgabe Nr.1
#a)
a<-(2+3*(4+5*(6+7*(8+9))));a
#1889

#b)
b<-2^11;b
#2048
b<-2**11;b
#2048

#c)
c<-log(2);c
#0.6931472

#d)
d<-log10(2);d
#0.30103

#e)
e<-sqrt(333);e

#18.24829

#Aufgabe Nr.2

#a)
i<-c(1:20)
erg1<-function(i){
  0.1*i^3
}
erg1(i)
#0.1   0.8   2.7   6.4  12.5  21.6  34.3  51.2  72.9 100.0 133.1 172.8 219.7 274.4 337.5 409.6 491.3 583.2 685.9 800.0

#Alternative:
sum(0.1*(1:20)^3)
#4410

#b)

prod((1:20)^0.4)
#22617773

#Aufgabe Nr.3
x<-c(1:3, 6:4)
#a)

sort(x)
#1 2 3 4 5 6

#b)
sort(x, decreasing = T)
#6 5 4 3 2 1

#Aufgabe Nr.4
pid<-c(1:4)
name<-c("Susi", "Carmen", "Herbert", "Karl")
sex<-rep(c(1,0), c(2,2))
age<-c(22, 24, 21, 27)

dat<-data.frame(pid, name, sex, age)
head(dat)
str(dat)
summary(dat)

#a)
order_auf<-order(dat$age); order_auf
dat[order_auf,]

#b)
order_ab<-order(dat$age, decreasing = T);order_ab
dat[order_ab,]
