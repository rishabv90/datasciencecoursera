##Rishab Verma
##5th July 2016

##lexical scoping
make.power<- function(n)
{
  pow <- function(x)
  {
    x^n
  }
  pow
}


##2

y<-10
f<-function(x)
{
  y<-2
  y^2 + g(x)
}

g<-function(x)
{
  x*y
}

##3
cube<- function(x,n)
{
    x^3
}

##4
x<-1:10
if(x>5)
{
  x<-0
}

##5
f<-function(x)
{
      g<-function(y)
      {
            y+z
      }
      z<-4
      x+g(x)
}

##6

x<-5
y <- if(x < 3)
{
      NA
}else
{
      10
}

##7




