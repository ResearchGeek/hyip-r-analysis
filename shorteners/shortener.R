# read results from sweep run no 1, 2 & 3
instance1 <- read.csv("C:/Dropbox/HYIP-ZSS-2014/batch/batche do puszczenia/OJ/[bardzo dobre] 1% mutacji/instance_1/hyip_cash.2014.Oct.13.00_18_44.csv", sep=";")
instance2 <- read.csv("C:/Dropbox/HYIP-ZSS-2014/batch/batche do puszczenia/OJ/[bardzo dobre] 1% mutacji/instance_2/hyip_cash.2014.Oct.13.00_18_43.csv", sep=";")
instance3 <- read.csv("C:/Dropbox/HYIP-ZSS-2014/batch/batche do puszczenia/OJ/[bardzo dobre] 1% mutacji/instance_3/hyip_cash.2014.Oct.13.00_18_44.csv", sep=";")
# set working directory
setwd("C:\\wyniki\\")

# simple OK checks
names(instance1)
names(instance2)
names(instance3)

tail(instance1,1)
tail(instance2,1)
tail(instance3,1)

instance1_short <- instance1[instance1$Generation %% 5 == 0, ]
instance2_short <- instance2[instance2$Generation %% 5 == 0, ]
instance3_short <- instance3[instance3$Generation %% 5 == 0, ]

#library(dataframes2xls)
# this pythonic piggyback won't work with big datasheets
# better try java xlxs
#dataframes2xls::write.xls(instance1_short, file="instance1-short-mutate0p01.xlsx")
#dataframes2xls::write.xls(instance2_short, file="instance2-short-mutate0p01.xlsx")
#dataframes2xls::write.xls(instance3_short, file="instance3-short-mutate0p01.xlsx")
install.packages("rJava")
install.packages("xlsx")

if (Sys.getenv("JAVA_HOME")!="")
  Sys.setenv(JAVA_HOME="")
library(rJava)

require(xlsx)

#write.xlsx(instance1_short, file="instance1-short-mutate0p01.xlsx")
#write.xlsx(instance2_short, file="instance2-short-mutate0p01.xlsx")
#write.xlsx(instance3_short, file="instance3-short-mutate0p01.xlsx")

# that also worked not so well for those big dataset ;]
# so maybe simple write.csv() ?

write.table(instance1_short, file="instance1-short-mutate0p01.csv", append = FALSE, quote = FALSE, sep = ";", row.names = FALSE)
write.table(instance2_short, file="instance2-short-mutate0p01.csv", append = FALSE, quote = FALSE, sep = ";", row.names = FALSE)
write.table(instance3_short, file="instance3-short-mutate0p01.csv", append = FALSE, quote = FALSE, sep = ";", row.names = FALSE)
