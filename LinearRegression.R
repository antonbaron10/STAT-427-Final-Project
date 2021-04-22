library(tidyverse)
library(ggplot2)
library(MASS)

read.csv("CovidDataSetFinal.csv")
CovidData <- read.csv("CovidDataSetFinal.csv")

CovidData = na.omit(CovidData)
dim(CovidData)

names(CovidData)

summary(CovidData)
head(CovidData)

CovidData.reg <- lm(MaskWearing_ALWAYS ~ Population + Approximate.Population.Density + cases + COVID_deaths + confirmed_cases + confirmed_deaths + X..Unemployed + Median.Household.Income + X..African.American + X..Hispanic + X..Asian.American + X..White.American + X..Native.American.and.Alaska.Native + X..Native.Hawaiian.and.Other.Pacific.Islander + Approx....People.with.College.or.Associate.s.Degree.per.Year + Statewide.Mask.Requirement + votes_dem2016 + votes_gop2016 + total_votes2016 + per_dem2016 + per_gop2016 + votes_gop2020 + votes_dem2020 + total_votes2020 + diff2020 + per_gop2020 + per_dem2020 + Percent.Male + Percent.Female + Less.than.a.high.school.diploma..2015.19 + High.school.diploma.only..2015.19 + Some.college.or.associate.s.degree..2015.19 + Bachelor.s.degree.or.higher..2015.19 + Percent.of.adults.with.less.than.a.high.school.diploma..2015.19 + Percent.of.adults.with.a.high.school.diploma.only..2015.19 + Percent.of.adults.with.a.bachelor.s.degree.or.higher..2015.19, data=CovidData)
CovidData.reg

summary(CovidData.reg)

plot(CovidData.reg)
