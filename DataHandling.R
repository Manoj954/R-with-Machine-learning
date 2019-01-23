data <- read.csv("C:/Users/M1046091/Documents/R course/Data/input.csv")

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

max(data$salary)

retval <- subset(data, salary == max(salary))
print(retval)

retval = subset(data,name=="Guru")
retval


retval= subset(data, salary > 600 & dept == "IT")
"select * from data where salary>600 and dept='IT'"
retval

retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
#****************************************************************

library("xlsx")
dataxls=read.xlsx("C:/Users/M1046091/Documents/R course/Data/input.xlsx", sheetIndex=1)

#*****************************

library("XML")
library("methods")
dataXML= xmlParse(file="C:/Users/M1046091/Documents/R course/Data/input.xml")
rootnode <- xmlRoot(dataXML)
rootnode
xmlSize(rootnode)#ncol(dataframe)
rootnode[[1]][[1]]

xmldataframe <- xmlToDataFrame("C:/Users/M1046091/Documents/R course/Data/input.xml")
#************************************************
#C:/Users/M1046091/Documents/R course/Data/input.xml
library("rjson")

dataJson = fromJSON(file="C:/Users/M1046091/Documents/R course/Data/input.json")


