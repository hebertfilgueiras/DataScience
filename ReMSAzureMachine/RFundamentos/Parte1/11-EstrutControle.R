x = 25
if (x < 30) 
{"Este número é menor que 30"}


# Else
if (x < 7) {
  "Este número é menor que 7"
} else {
  "Este número não é menor que 7"
}


x = 8
ifelse (x < 6, "Correto!", NA)

x = c(7,5,4)
ifelse(x < 5, "Menor que 5", 
       ifelse(x == 5, "Igual a 5", "Maior que 5"))


# Estruturas if dentro de funções
func1 <- function(x,y){
  ifelse(y < 7, x + y, "Não encontrado")
}

func1(8,8)


rep(rnorm(10), 5)


# Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)
}

for (i in 1:20) {print(i)}
for (q in rnorm(10)) {print(q)}

for(i in 1:22){
  if(i == 13 | i == 15)
    next
  print (i)}

for(i in 1:22){
  if(i == 13)
    break
  print (i)}

x = 1
while(x < 5){
  x = x + 1
  print(x)
}

# O loop while não será executado
y = 6
while(y < 5){
  y = y+10
  print(y)
}