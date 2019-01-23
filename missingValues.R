data <- iris
View(data)

summary(iris)

#Generate 10% missing values at Random 
iris.mis <- prodNA(iris, noNA = 0.1)

md.pattern(iris.mis)


install.packages("VIM")
library(VIM)
mice_plot <- aggr(iris.mis, col=c('navyblue','yellow'),
                    numbers=TRUE, sortVars=TRUE,
                    labels=names(iris.mis), cex.axis=.7,
                    gap=3, ylab=c("Missing data","Pattern"))


imputed_Data <- mice(iris.mis, m=5, maxit = 50, method = 'pmm', seed = 500)

summary(imputed_Data)

imputed_Data$imp$Sepal.Width

completeData <- complete(imputed_Data,2)


iris.impForest=missForest(iris.mis)
iris.impForest$ximp

iris.impForest$OOBerror

iris.err <- mixError(iris.impForest$ximp, iris.mis, iris)
iris.err