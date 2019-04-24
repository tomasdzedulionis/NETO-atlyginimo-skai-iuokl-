dat <- read.csv("/Users/Tomas/Downloads/data3.csv", header=TRUE) ## Perskaitome faila
dat2 <- subset(dat, dat$Lytis=="Vyrai ir moterys" & dat$Gyvenamoji.vietovė == "Miestas ir kaimas") ## Isrenkame duomenis
vidurkis <- aggregate(dat2[,7], list(dat2$Amžius..tikslinės.amžiaus.grupės.), mean) ## Skaiciuojame vidurki

###########################################################################

vyrai <- subset(dat, dat$Lytis=="Vyrai" & dat$Amžius..tikslinės.amžiaus.grupės.=="Iš viso pagal amžiaus grupes" & dat$Gyvenamoji.vietovė=="Miestas ir kaimas" ) ## Subsetinam pagal Vyrus
moterys <- subset(dat, dat$Lytis=="Moterys" & dat$Amžius..tikslinės.amžiaus.grupės.=="Iš viso pagal amžiaus grupes" & dat$Gyvenamoji.vietovė=="Miestas ir kaimas" ) ## Same pagal moteris
vidvyr <- aggregate(vyrai[,7], list(vyrai$Laikotarpis), mean) # Bereikalo, bet taip graziai gaunas listas :D
vidmot <- aggregate(moterys[,7], list(moterys$Laikotarpis), mean) # same.
plot(vidmot, type="l", col="blue", ## Piesiam grafika
     ylim=c(0,25), main="Nedarbingumo Lygis", xlab="Metai", ylab="Nedarbingumo lygis, proc")
lines(vidvyr, col="red")
legend("bottomleft", 
       legend = c("Vyrai", "Moterys"),
       col=c("red","blue"),
       lty=1,
       cex = 0.6)

##########################################################################
