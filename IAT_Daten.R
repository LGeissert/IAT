##############SPSS Daten einlesen################
library(haven)
Final <- read_sav("C:/Users/laura/JLUbox/Promotion/OpenSesame/IAT_Log/Auswertung/Final.sav")
View(Final)                  

#Verteilung + Deskriptive Alter
table(Final$Alter)
summary(Final$Alter)

#Verteilung Geschlecht
table(Final$Geschlecht)

#Verteilung Blöcke
table(Final$Reihenfolge)

#Verteilung OXTR
table(Final$OXTR)

#Verteilung COMT
table(Final$COMT)

#Deskriptive IAT
summary(Final$D_Father)
summary(Final$D_Mother)
summary(Final$D_Self)

################Verteilung RQ_2##################

#sicher
summary(Final$RQ2_01)

#abweisend
summary(Final$RQ2_02)

#anklammernd
summary(Final$RQ2_03)

#ängstlich-vermeidend
summary(Final$RQ2_04)

#################Verteilung ASQ##################

#Vertrauen
summary(Final$ASQ_Vertrauen)

#Unbehagen mit Nähe
summary(Final$ASQ_Unbehagen_Mit_Nähe)

#Bedürfnis nach Anerkennung
summary(Final$ASQ_Bedürfnis_nach_Anerkennung)

#Fixierung auf Beziehungen
summary(Final$ASQ_Fixierung_auf_Beziehungen)

#Vernachlässigung von Beziehungen
summary(Final$ASQ_Vernachlässigung_von_Beziehungen)

#################Korrelationen################
cor_Father_Age <- cor(Final$D_Father, Final$Alter, use="pairwise.complete.obs")

cor_Mother_Age <- cor(Final$D_Mother, Final$Alter, use="pairwise.complete.obs")

cor_Self_Age <- cor(Final$D_Self, Final$Alter, use="pairwise.complete.obs")


