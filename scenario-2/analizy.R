# wczytuje wyniki sweep run no 1
hyip_cash.2014.May.20.14_47_17 <- read.csv("C:/wyniki/simphony_model_1400590006798/instance_1/hyip_cash.2014.May.20.14_47_17.csv", sep=";")
# ustawiam robocza sciezke
setwd("C:\\wyniki\\")

# tutaj jakies krotke analizy zeby sprawdzic ze ok
names(hyip_cash.2014.May.20.14_47_17)
hist(hyip_cash.2014.May.20.14_47_17$Advert)
hyip_cash.2014.May.20.14_47_17$Income <- as.numeric(hyip_cash.2014.May.20.14_47_17$Income)
hist(hyip_cash.2014.May.20.14_47_17$Income)
hyip1 <- hyip_cash.2014.May.20.14_47_17[hyip_cash.2014.May.20.14_47_17$Id==1, ]
names(hyip1)
hyip1_1 <- hyip1[hyip1$Generation==1, ]
plot(hyip1_1$Iteration, hyip1_1$Cash, type="l", xlab="Iteration", ylab="Cash")
instance_1_gen100_it200 <- hyip_cash.2014.May.20.14_47_17[hyip_cash.2014.May.20.14_47_17$Generation==100 & hyip_cash.2014.May.20.14_47_17$Iteration==200, ]
names(instance_1_gen100_it200)

# tutaj eskport ostatniej iteracji no 200
#
library(dataframes2xls)
dataframes2xls::write.xls(instance_1_gen100_it200, "instance1-100-200.xls")

# wczytuje wyniki sweep run no 2
hyip_cash.2014.May.20.14_47_17 <- read.csv("C:/wyniki/simphony_model_1400590006798/instance_2/hyip_cash.2014.May.20.14_47_17.csv", sep=";")
instance_2_gen100_it200 <- hyip_cash.2014.May.20.14_47_17[hyip_cash.2014.May.20.14_47_17$Generation==100 & hyip_cash.2014.May.20.14_47_17$Iteration==200, ]
names(instance_2_gen100_it200)
library(dataframes2xls)
dataframes2xls::write.xls(instance_2_gen100_it200, "instance2-100-200.xls")

# wczytuje wyniki sweep run no 3
hyip_cash.2014.May.20.14_47_17 <- read.csv("C:/wyniki/simphony_model_1400590006798/instance_3/hyip_cash.2014.May.20.14_47_18.csv", sep=";")
instance_3_gen100_it200 <- hyip_cash.2014.May.20.14_47_17[hyip_cash.2014.May.20.14_47_17$Generation==100 & hyip_cash.2014.May.20.14_47_17$Iteration==200, ]
names(instance_3_gen100_it200)
library(dataframes2xls)
dataframes2xls::write.xls(instance_3_gen100_it200, "instance3-100-200.xls")
