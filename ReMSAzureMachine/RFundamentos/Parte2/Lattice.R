install.packages('lattice')
library(lattice)
xyplot(data=iris, groups= Species, Sepal.Length~Petal.Length)

splom(trees)

barchart(Class~Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4,1),
         auto.key = list(title = 'Dados do Titanic'), columns =2)
        )

PetalLenght = equal.count(iris$Petal.Length,4)
PetalLenght
xyplot(Sepal.Length~Sepal.Width | PetalLenght, data=iris)

histogram(~Sepal.Length|Species, xlab='',  data=iris,
          layout=c(3,1), type = 'density',
          main='Lattice Histogram', sub ='Iris dataset')

bwplot (Species~Sepal.Length,data = iris) 

