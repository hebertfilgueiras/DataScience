install.packages('plyr')
library(plyr)

y=list(1:3,4:6,7:9)
ldply(y,sum)


#Benchmark
install.packages('rbenchmark')
library(rbenchmark)
benchmark(do.call(sum,y),ldply(y,sum))


?strsplit

datas = c('1999-05-20','2010-10-12')
temp = strsplit(datas, "-")
temp

matriz = matrix(unlist(temp),nrow = 2, byrow = T)
matriz


frase = 'muitas vezes falamos muitas vezes e falamos muitas'
palavras = strsplit(frase, ' ')[[1]]
palavras
unique(palavras)
