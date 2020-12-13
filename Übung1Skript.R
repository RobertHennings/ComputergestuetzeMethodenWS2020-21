#Computergestützte Methoden WiSe2020/21 Übung Nr.1
#Aufgabe Nr.1
a <- c(1, 3,7)
b <- c("Katja", "Christoph", "Jurij")
d <- c(T, T, F)
class(a)

class(b)

class(d)

as.character(a);a


class(a)

a <- as.character(a)
class(a)
d<- as.numeric(d)
class(d)

#Aufgabe Nr2

a2  <- rep(x = c(1:3), times = 3)
a2

b2 <- rep(x = c(1:3), times = c(3,3,3))
b2

c2 <- rep(x = c(1:4), times = c(1:4))
c2


d2 <- rep(x = c("a", "b", "c"), times = c(2, 5, 1))
d2

#Aufgabe Nr.3
a3 <- c("Hund", "Katze", "Maus")
b3 <- rep(x= a3, times = c(2, 2, 3))
b3

unique(b3)
 
duplicated(b3)

a32 <- rep(x = b3, times = c(1, 0, 1, 0, 1, 0, 0))
a32

d3 <- a32[3] <- "Elefant"
d3

d3 <- a32
d3
is.element(d3, a3)

is.element(b3, d3)

