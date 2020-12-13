#Computergestützte Methoden WiSe2020/21 Übung Nr.3

#Aufgabe Nr.1
#Matrix erzeugen 
#a)
x<-c(1:12)
A<-matrix(x, nrow=3, ncol=4, byrow=F);A
sum(A[c(2:3), c(1:2)])
#16
sum(A[c(2:3), ])
#56
sum(A[c(2:3), ])
#56
sum(A[ ,c(1:2)])
#21

#b)
#Zu berechnen: Axb
b<-c(1:4)
A%*%b

# [,1]
#[1,]   70
#[2,]   80
#[3,]   90

t(b)%*%t(A)

#[,1] [,2] [,3]
#[1,]   70   80   90


#Aufgabe Nr.2
#Dataframe erzeugen
pid<-c(1:4)
name<-c("Susi", "Carmen", "Herbert", "Karl")
sex<-rep(c(1,0), c(2,2))
age<-c(22, 24, 21, 27)
dat<-data.frame(pid, name, sex, age);dat
write.table(dat, file = "uebung3datensatzdat.r")

rm(dat) #Datensatz nicht mehr im Arbeitsspeicher
datre<-read.table("/Users/Robert_Hennings/Rstudio/uebung3datensatzdat.r")
datre

#b)
write.csv2(datre, file ="uebung3datensatzdatrealscsv.csv")
rm(datre)
datrecsv<-read.csv2("/Users/Robert_Hennings/Rstudio/uebung3datensatzdatrealscsv.csv")
datrecsv

#Aufgabe Nr.3
#Excel Sheet reinladen
dat3<-read.csv2("/Users/Robert_Hennings/Dokumente/Uni/5.Semester/Computergestütze Methoden/RProgramme/uebung3csvdateiexcel.csv")
dat3


#Aufgabe Nr.4
#Datei laden
d<-read.csv2("/Users/Robert_Hennings/Dokumente/Uni/5.Semester/Computergestütze Methoden/RProgramme/psid_2007_comp_meth.csv")
head(d)
#a) 
dim(d)
#1000  9
#b)
names(d)
#"pid"      "hid"      "sex"      "age"      "eduyears" "hours"    "wage"     "ex"       "sector" 
colnames(d)
#"pid"      "hid"      "sex"      "age"      "eduyears" "hours"    "wage"     "ex"       "sector" 
#c)
#Spalte hinzufügen die den Stundenlohn enthält
# wage/hours
d$wagerate<-(d$wage/d$hours)

#d)
d$logwagereate<-(log(d$wagerate))

write.csv2(d, file="usa.csv")
#g)
dim(d)
#1000  11
colnames(d)
#"pid"          "hid"          "sex"          "age"          "eduyears"     "hours"        "wage"         "ex"           "sector"      
#"wagerate"     "logwagereate"
plot(
     x=d$age,
     y=d$wage,
     xlab = "Alter der Personen",
     ylab = "Gehalt der Personen")

