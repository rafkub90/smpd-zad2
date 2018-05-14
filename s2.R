library("MCDA")
library("OutrankingTools")


epsilon <- 0.01

performanceTable <- rbind(      
  c(24,350,1,1099),
  c(24,250,1,689),
  c(23,250,1,599),
  c(27,250,4,849),
  c(24,250,1,499),
  c(21,200,5,339),
  c(27,250,4,819),
  c(21,250,5,389),
  c(32,250,5,799),
  c(23,259,5,599)
)

rownames(performanceTable) <- c(
  "BenQ ZOWIE",
  "IIyama G-Master",
  "LG 24MP59",
  "Samsung C27",
  "Samsung S24",
  "ACER K22HQ",
  "Philips 278E8QJ",
  "BenQ GW2270",
  "AOC Q3279",
  "LG 24MT49")
colnames(performanceTable) <- c(
  "Matryca",
  "Iluminacja",
  "Reakcja",
  "Cena"
)

alternatives <-c("BenQ ZOWIE","IIyama G-Master","LG 24MP59","Samsung C27","Samsung S24","ACER K22HQ","Philips 278E8QJ","BenQ GW2270","AOC Q3279","LG 24MT49")

criteria <-c("Matryca","Iluminacja","Reakcja","Cena")

alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10)

names(alternativesRanks) <- row.names(performanceTable)

criteriaMinMax <- c("max","max","min","min")

names(criteriaMinMax) <- colnames(performanceTable)

w <- c(0.5,0.25,0.25,0.1)
x<- Electre_1(performanceTable,alternatives,criteria,w,criteriaMinMax)
