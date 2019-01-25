library(randomForest)

# Load the party package. It will automatically load other
# required packages.
library(party)

head(readingSkills)

# Create the forest.
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score, 
                              data = readingSkills)
output.forest

# Importance of each predictor.
importance(output.forest,type = 2)

getTree(output.forest, 1, labelVar=TRUE)

plot(output.forest)

getTree(cforest(nativeSpeaker ~ ., data=readingSkills, controls=cforest_control(mtry=2, mincriterion=0)))


#----------------------

options(repos='http://cran.rstudio.org')
have.packages <- installed.packages()
cran.packages <- c('devtools','plotrix','randomForest','tree')
to.install <- setdiff(cran.packages, have.packages[,1])
if(length(to.install)>0) install.packages(to.install)

library(devtools)
if(!('reprtree' %in% installed.packages())){
  install_github('araastat/reprtree')
}
for(p in c(cran.packages, 'reprtree')) eval(substitute(library(pkg), list(pkg=p)))


#-----------------------
plot(randomForest(nativeSpeaker ~ ., data=readingSkills, keep.forest=FALSE, ntree=100), log="y")

