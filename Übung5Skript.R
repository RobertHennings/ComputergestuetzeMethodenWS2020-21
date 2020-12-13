#Computergestützte Methoden WiSe2020/21 Übung Nr.5

#Aufgabe Nr.1
#a)
vec<-c(1:5)

mittel<-function(x){
  mit<-c(sum(x^2)/length(x))
  return(mit)
}

mittel(vec)
#11

#b)
vec2<-c(1:5)
vec3<-c(1:50)
absmittel<-function(x){
  mit<-c(sum(x^2)/length(x))
  dist<-c(sum(abs(vec2-mit)))
  gemit<-c(dist/length(x))
  return(gemit)
}
absmittel(vec2)
#8
absmittel(vec3)
#85.55

#Aufgabe Nr.2
x<-rep(1:3, 4)
y<-rep(1:2, 6)
z<-rep(1:2, 1:3, 1:4, 3:5)
#a)
tabxy<-table(x,y);tabxy
tabxz<-table(xz);tabxz
tabyz<-table(y,z);tabyz

#b)
randsumxy<-addmargins(tabxy);randsumxy
#c)
tab<-table(x,y,z)
mtab<-margin.table(tab, c(1:2))
addmargins(tab)


#d)
tabxyz<-table(x,y,z)
tabxzy<-table(x,z,y)
tabzxy<-table(z,x,y)
tabzyx<-table(z,y,x)

#e)
ftable(tabxyz)
ftable(tabxzy)
ftable(tabzxy)
ftable(tabzyx)

ftable(tab, row.vars = c("y", "z"))

#f)
prop.table(table(y,z),1)


#Aufgabe Nr.3

d<-read.csv2("/Users/Robert_Hennings/Dokumente/Uni/5.Semester/Computergestütze Methoden/RProgramme/usa.csv")
head(d)
?cut
#a)
w<-d$wr
grenzen<-c(min(w)-1, quantile(w, 1/3), quantile(w, 2/3), max(w))
grenzen

cwage<-cut(w, breaks = grenzen, labels= 1:3)
table(cwage);length(cwage)

#b)
#i)
tab<-table(d$sex, cwage, d$sector)
tab2<-margin.table(tab, c(1:2));tab2

tab3<-table(d$sex);tab3
#ii)
tab2[1,3]/tab3[1]
#iii)
tab4<-prop.table(tab2,2);tab4
tab4[1,3]
tab3, tab3[1]/1000

#iv)
PersonenInCwage1<-sum(cwage==1);PersonenInCwage1
PersonenInCwage3<-sum(cwage==3);PersonenInCwage3
round(table(d$sector[cwage==1])/PersonenInCwage1,2)


#Aufgabe Nr.4
set.seed(1)
x<-c(rnorm(500), rnorm(500, mean = 5, sd = 4))
y<-2*x+rnorm(1000)
#a)
length(x);length(y)
plot(x,y,
     main = "XY Scatterplot",
     pch = 3,
     col ="red")

#b)
plot(x,y,
     main = "XY Diagramm",
     pch = 3,
     col ="blue",
     sub = "1000 Punkte",
     xlab = "X Vektor",
     ylab = "Y Vektor")
legend("bottomright",
       pch =3,
       col ="red",
       "Beobachtungen",
       title = "Legende")

#c)
dev.copy(device = pdf, file = "fig1.pdf", width =7, height = 4, pointsize = 12,
         onefile =F,paper = "special")
plot(x,y,
     main = "XY Diagramm",
     pch = 3,
     col ="blue",
     sub = "1000 Punkte",
     xlab = "X Vektor",
     ylab = "Y Vektor")
legend("bottomright",
       pch =3,
       col ="red",
       "Beobachtungen",
       title = "Legende")
dev.off()


#Aufgabe Nr.5
#a)
?hist
#b) 
hist(d$wage)

#c)
#i) 
hist(d$wage[d$wage <= 250000])
#ii)
hist(d$wage[d$wage <= 250000]/1000)

#iii)
hist(d$wage[d$wage <= 250000]/1000, prob =T)

#iv)
hist(d$wage[d$wage <= 250000]/1000, prob =T, col ="grey80")

#v)
hist(d$wage[d$wage <= 250000]/1000, prob =T, col ="grey80", main = "Histogramm der Jahreslöhne",
     xlab ="Jahreslohn",
     ylab ="Dichte")
#vi)
hist(d$wage[d$wage <= 250000]/1000, prob =T, col ="grey80", main = "Histogramm der Jahreslöhne",
     xlab ="Jahreslohn",
     ylab ="Dichte", nclass= 50)

#Aufgabe Nr.6
#a)
?boxplot
#b)
boxplot(d$lwr~d$sector)
#c)
boxplot(d$lwr~d$sector, col = "red",
        xlab ="Sektor",
        ylab ="log(wagerate)",
        main ="Verteilung der log Gehälter/ bzw.Stundenlohn ")
#Aufgabe Nr.7
#a)
?barplot
#b)
?par
#c)
tab_sektor<-table(d$sector)/nrow(d))
snam<-c("1 k.a.", "2 LEB", "3 VG", "4 Bau", "5 Handel", "6 Transp", "7 BuV", "8 Dienste")
barplot(tab_sektor, col =heat.colors(8, aplha =1), names.args=snam)

par(mar = c(5, 7, 4, 2) + 0.01)
barplot(tab_sektor, col = heat.colors(8, aplha = 1), ames.args =snam,
        horiz =T, las = 2, xlim = c(0, 0.05))

#Aufgabe Nr.8
#a)
?plot
#b)
?ponts
#c)
plot(d$hours, d$wage)
#d)
plot(d$hours, d$wage, main ="Streudiagramm Arbeitszeit und Jahreslohn",
     pch =3, col ="red",
     xlab = "Jährliche Arbeitszeit",
     ylab = "Jährliches einkommen")
#e)
abline(lm($wage~d$hours), col =1, lwd = 2)



