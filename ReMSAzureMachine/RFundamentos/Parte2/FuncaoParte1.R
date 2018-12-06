?unlist

list1 = list(6,'b',15)
class(list1)

unlist(list1)

vec1 = unlist(list1)
class(vec1)


list2 = list(v1=6,v2=list(377,722), v3=c(30,217))
list2
list2$v2

unlist(list2)

mean(unlist(list2))
round(mean(unlist(list2)))


#do.call executa uma funcao e um objeto

?do.call

data = list()
N = 100

for (n in 1:N){
  data[[n]] = data.frame(index=n,char=sample(letters,1),z=rnorm(1))
}

head(data)

do.call(rbind,data)
class(do.call(rbind,data))
