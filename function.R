A = function(x1,x2)
{
  v= x1^2 + x2
  return(v) 
}
A(x1=1,x2=2)

testFunction = function(x1,x2)
{
  v1=x1^2 + x2
  v2 = x1^2 - x2
  return(c(v1,v2))
}
testFunction(x1=1, x2=1)
rm(list=ls())
testFunction = function(x)
{
  v = x^2 + y
  return (v)
}
testFunction(x)
y=1
rm(list=ls())
testFunction = function(x)
{
  v1 = x^2
  v2 = matrix((1:5)^x,1,5)
  return (list(first = v1, second = v2))
}
testFunction(2)

v
s_colMean = function(x)
  {
     if(class(x)!="matrix") stop()
           v = rep(0,ncol(x))
         for(i in 1:ncol(x))
          {
               v[i] = mean(x[i,])
             }
         return(v)
}
