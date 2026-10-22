load("data/Hirsutisme.RData")

## Partie 1

#Q1 
t.test(Age~diagnostic,data=Hirsutisme2)

#Q2
cor.test(Hirsutisme2$insulinemie,Hirsutisme2$cortisol)

#Q3 
chisq.test(table(Hirsutisme2$boiterie,Hirsutisme2$diagnostic))

#Q4 
chisq.test(table(Hirsutisme2$PUPD,Hirsutisme2$diagnostic))



## Partie 2
library(dplyr)
Hirsutes<-Hirsutisme2 %>%filter(diagnostic=="hirsute")
#Q1
obs<-table(Hirsute$Type)
chisq.test(obs)

#Q2
t.test(Hirsutisme2$Age,mu=30)

#Q3
t.test(Age~Type,data=Hirsutisme2)

#Q4
cor.test(Hirsutisme2$Age,Hirsutisme2$glycemie)

#Q5
table(Hirsutisme2$Type,Hirsutisme2$poids)
