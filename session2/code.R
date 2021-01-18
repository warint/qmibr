library(ISLR)
library(dplyr)

mydata <- data.frame(College)

str(mydata)

summary(mydata)

pairs(mydata[,1:10])

boxplot(Outstate~Private,
            data=mydata,
            xlab="Private",
            ylab="Outstate")

mydata <- mydata %>% mutate(Elite = case_when(mydata$Top10perc > 50 ~ "Yes",
                                              TRUE ~ "No"))
summary(mydata)  # 78 Elite

boxplot(Outstate~Elite,
            data=mydata,
            xlab="Elite",
            ylab="Outstate")

par(mfrow=c(2,2))

hist(mydata$Top25perc,
         breaks=50,
         xlim=c(0,25000),
         main="Apps")
