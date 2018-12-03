c(1.1:5.8)

myfunc = function(x){x+x}
myfunc(10)
class(myfunc)

myfunc2 = function (a,b){
  valor = a^b
  print(valor)
}

myfunc2(3,2)

jogandoDados = function(){
  valor = sample(1:6,size=1)
  valor
}

jogandoDados()


vec1 = (1:5)
vec2 = c('a','b','c')
vec3 = c(3.3,4.4,5.5)

myfunc3 = function(...){
  df= data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)
myfunc3(vec1,vec2)
myfunc3(vec1,vec2,vec3)



###
x =  1:1000
sqrt(x)
