"Decision tree is a graph to represent choices and their results in form of a tree. 
The nodes in the graph represent an event or choice and the edges of the graph represent the decision rules or conditions."

#Applications
"predicting an email as spam or not spam, 
predicting of a tumor is cancerous ,
predicting a loan as a good or bad ,
credit risk based on the factors"

#install.packages("party",dependencies = T)

# Load the party package. It will automatically load other
# dependent packages.
library(party)

# Print some records from data set readingSkills.
print(head(readingSkills))
# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()