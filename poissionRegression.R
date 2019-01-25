Pinput <- warpbreaks

head(Pinput)

as.factor(Pinput$tension)

output <-glm(formula = breaks ~ wool+tension, data = warpbreaks,
             family = poisson)

summary(output)