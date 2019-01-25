head(iris)


set.seed(20)

clustering=kmeans(iris[, 3:4], 3, nstart = 20)

clustering

table(clustering$cluster, iris$Species)

clustering$cluster <- as.factor(clustering$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = clustering$cluster)) + geom_point()



ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()
