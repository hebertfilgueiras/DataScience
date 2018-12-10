# Exercício 1 -Crie uma função que receba e vetores como parâmetro, converta-os em um dataframe e imprima
converteVetor = function(...){
  df = as.data.frame(cbind(...))
  print(df)
}
vec1= c(1:5)
vec2 = 6:10
converteVetor(vec1,vec2)
# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros e
#calcule a media de cada linha
mat1 = matrix(1:16, nrow = 4, ncol = 4)
mat1
apply(mat1,1, mean)

# Exercício 3 -Considere o dataframe abaixo. Calcule a media por disciplinaescola
#<-data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
#Matemática = c(90, 80, 85, 87, 56, 79),Geografia = c(100, 78, 86, 90, 98, 67),
#Química = c(76, 56, 89, 90, 100, 87))

disciplinaescola=data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),Matemática = c(90, 80, 85, 87, 56, 79),Geografia = c(100, 78, 86, 90, 98, 67),Química = c(76, 56, 89, 90, 100, 87))
disciplinaescola
#calculando individualamente
mean(disciplinaescola$Matemática)
# convertendo df em matriz e aplicando APLLY
matrizDE = as.matrix(disciplinaescola[, c(2, 3, 4)])
apply(matrizDE, 2, mean)


# Obs: Se você tentar calcular a média de apenas uma disciplina, assim, vai receber uma mensagem de erro:
apply(disciplinaescola$Matemática,2,mean)

# Isso acontece porque o interpretador do R tenta usar um vetor de qualquer dimensão,
# enquanto apply espera que o objeto tenha algumas dimensões.
# Você pode evitar a coerção, adicionando drop = F ao seu comando, ou seja:
apply(disciplinaescola[, c(2), drop=F], 2, mean)

# Exercício 4 -Cria uma lista com 3 elementos, todos numéricos e calcule a soma de todos os elementos da lista
lis1 = list(2,4,6)
lapply(lis1,sum)
sum(sapply(lis1,sum))
#pode ser utilzado tb do.call
do.call(sum,lis1)

# Exercício 5 -Transforme a lista anterior um vetor
vecList = as.vector(do.call(cbind,lis1))
vecList
# podemos usar tb a funcao unlist
unlist(lis1)

# Exercício 6 -Considere a string abaixo. Substitua a palavra textos por frasesstr <-c("Expressoes", "regulares", "em linguagem R", "permitem a busca de padroes", "e exploracao de textos","podemos buscar padroes em digitos","como por exemplo","10992451280")
palavras =c("Expressoes", "regulares", "em linguagem R", "permitem a busca de padroes", "e exploracao de textos","podemos buscar padroes em digitos","como por exemplo","10992451280")

gsub("textos", "frasesstr", palavras)
gsub("ex", "EX", str, ignore.case = T)


# sub()
sub("textos", "frasesstr", palavras)

# Exercício7 -Usando o dataset mtcars, crie um gráficocom ggplot do tipo scatter plot.
#Use as colunas disp e mpg nos eixos x e y respectivamente
?ggplot2
library(ggplot2)
ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()

# gerando atraves da funcao plot padra
plot(mtcars$disp, mtcars$mpg, col = 123, pch = 10, main = "Multi Scatterplot",
     col.main = "red", cex.main = 1.5, xlab = "indep",
     ylab = "depend")



# Exercício8 -Usando o exemplo anterior, explore outros tipos de gráficosàO gabarito com as respostas você encontra no script 17-Exercicios-Capitulo-3.Rno arquivo zip com os demais scripts deste capítulo.
