vet1=c(1:10)
vet1
length(vet1)
mode(vet1)
class(vet1)
typeof(vet1)


mat1 =matrix(1:10, nrow=2)
mat1
length(mat1)
mode(mat1)
typeof(mat1)


arra1 <- array(1:5, dim=c(3,3,3))
arra1
length(arra1)


array2<-array(1:4)
array2[3]

#data frame 
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)


lis1<-list(a=mat1,b=vet1)
lis1
length(lis1)
mode(lis1)
class(lis1)
typeof(lis1)


func1 = function(x){
  var1 = x*x 
  return(var1)
}

func1(2)

class(func1)

#removendo objetos
rm(func1)

objects()
