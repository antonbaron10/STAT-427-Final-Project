library(tidyverse)
library(ggplot2)
library(MASS)

CovidData <- read.csv("data/CovidDataSetFinal.csv")
CovidData = na.omit(CovidData)

###COVID DATA FILTERED IS THE DATASET YOU WANT TO USE
CovidDataFiltered = CovidData[, c("MaskWearingCategory","Population","PercentUnemployed","MedianHouseholdIncome","PercentAfricanAmerican","PercentHispanic", "PercentNativeAmericanAndAlaskaNative","PercentNativeHawaiianAndOtherPacificIslander","StatewideMaskRequirement","PercAdultsWithSomeCollegeOrAssociateDegree","PercAdultsWithBachelorDegreeOrHigher","per_dem2016","per_gop2016","per_gop2020","per_dem2020")]
attach(CovidDataFiltered)

dim(CovidData)

names(CovidData)

summary(CovidData)
head(CovidData)


CovidData.reg <- lm(MaskWearingCategory~.,data=CovidDataFiltered)
CovidData.reg

summary(CovidData.reg)

plot(CovidData.reg)

