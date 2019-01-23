x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation = lm(y~x)

print(relation)

summary(relation)

a <- data.frame(x = 170)
result <-  predict(relation,a)
result


# Give the chart file a name.
png(file = "linearregression.png")

# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

# Save the file.
dev.off()

#y = a + m1x1 + m2x2 +...mnxn


input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))


model <- lm(mpg~disp+hp+wt, data = input)

summary(model)

a=data.frame(disp=221,hp=102,wt=2.91)
predict(model,a)



