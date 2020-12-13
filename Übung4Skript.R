#Computergestützte Methoden WiSe2020/21 Übung Nr.4

#Aufgabe Nr.1
#Liste erzeugen
#a)
namen<-c("Kevin", "Jane")
alter<-c(22, 23, 21, 24)
weiblich<-c("m", "m", "w", "w")
#b)
mylist<-list(namen, alter, weiblich);mylist

#Aufgabe Nr.2
#a)
a<-(namen == "Jane");a
#b)
b<-ifelse(test= alter<=22, yes = "jung", no = "alt");b
#c)
c<-(alter<=22 & weiblich == "w");c1

#d)
d<-(alter>21 | weiblich == "m");d1


#Aufgabe Nr.3
#a)
for(i in mylist){

  print(class(i))
}
#b)
lapply(mylist, class)
#c)
lapply(mylist, length)

#Aufgabe Nr.4
#a)
M<-matrix(1:12, ncol = 4);M
#b)
apply(X=M, MARGIN=2,FUN=sum)
#c)
apply(X=M,MARGIN=1,FUN=mean)

#Aufgabe Nr.5
set.seed(1)
a<-sample(1:100, 10);a
b<-sample(0:1,10, replace = T);b
tapply(a,b, mean)

