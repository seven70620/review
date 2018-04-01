#Data Object in R:part 1

#vector

#variables(변수) 
x1 = 3.5 # name = values(객체)
typeof(x1) #type of values 
x2 = 3
typeof(x2) # double
x3 = 3L  # R은 자료형 지정안함 대신에 L -> integer
typeof(x3) # 3L <-integer!!
x4 = "a" # " "
typeof(x4)
x5 = TRUE 
typeof(x5)
x6 = x1+x3 # (double)+(integer)
typeof(x6) #double R language isn`t strict to the type of variable
           # 자료형이 코드안에서 바뀔 수 있음

#creating vector

# c()->1차원 배열 벡터
x = c(3)
print(x)
y = c(1,2,3)
z = c(x,y)
print(z) #벡터함수 c() 안에 숫자 or 다른 벡터 함수가 들어갈 수 있음.
x = c(88,15,12,13)
print(x)
x
typeof(x) # double!!

#연속적인 자연수 배열 생성 -> : 
1:5
3:(-2)
(3.1):(5.5) # 변수는 간격이 1인 '벡터'로 다루어짐
x1 = 1:3
x2 = 10:5
x3 = c(x1,x2) # c() multiple vector
x3
x2 = c(1,2,3)
x3 = c(x1,x2)
x3

#useful function to create vector
# - seq()
y = seq(from = 12, to = 30, by = 2)
y
y = seq(12,30,2)
y
y = seq(12,30,length = 19)
y
y = seq(12,30,length = 3)
y
y = seq(12,30, length = 25)
# - rep()
x = rep(8,4)
x
x = rep(c(5,12,13),3)
x
x = rep(1:3,4)
x
x = rep(c(5,12,14), each = 2)
x
# ** creating vector is important!!
# c(), :, rep(), seq() 사용법 알아야 됨!!

#slicing vector 1
# choose elements by the index of vector. **[]
x = 5:8
x1 = x[1:3]
x1
x2=c(x1[1:3],10,x[4])
x2
# index with negative signs ->excluding the correspondent elements
y = seq(1,5)
y
y[-c(1,3)]
y[-length(y)]

#length of vector ->length()
x = 3:6
length(x)
1:length(x)

#operation on vector
x1 = c(5,0,-4) 
x2 = c(1,2,2)
x1+x2 #elementwisely
x1*x2
x1/x2
x1+3 #shorter length is reused
x1*x2
x1 = c(5,0,-4,2)
x2 = c(2,1)
x1/x2 #x1_3/x2_1 x1_4/x2_2

#order of operation
y = 1:10-1 #1:10 -> -1 
y
y = 1: (10-1)
y

#useful operation
x<-11
x^2
x%%5
x <- 11  
X^2
x^2
x%/%5 #%/% 몫
x%%5 # %% 나머지

#logical operation
6<=7
6==7
6!=7
z = c(5,4,-3,8)
z^2
z^2>16

#slicing vector 2(filtering)
z[z>0]
z[z^2>8]
x= c(3,1,4,1)
x[x>2] # >> numeric[0] 공간은 있지만 변수가 없음
which(x>2) #**which returns location of True
x[which(x>2)] 

#%in% function 
1 %in% c(2,1,4) #1 in c()
c(1,5) %in% c(2,1,4) #1 in c(), 5 out of c()
c(1,5,3) %in% c(2,1,3)
c(3,1,4,1) %in% c(2,1,4)

#match() function
match(1,c(2,1,4))
match(c(1,4),c(2,1,4))
match(c(3,1,4,1),c(2,1,4,1)) #c(2,1,4,1) 1이 두 번 들어가 있지만 첫번째 1의 index로 
 # NA == Not Available

#################### vector
#1.creating 2. slicing or filtering 3. operation 4. useful functions

#matrix

#create matrix 

#matrix is 2-dimensional array and can be treated as 1-dimensional
#matirx == vector with special index
y= matrix(c(1,2,3,4),nrow = 2, ncol = 2) #1열부터 숫자채워짐.
y
y = matrix(c(1,2,3,4),nrow = 2, ncol = 2,byrow = T) #1행부터 채워짐.
y
y= matrix(c(1,3,4,5,1,3,4,1),4,2)
y[1,1]
y[,1]
y[-2,] #두번째 행을 제외

#matrix function
class(y)
dim(y) #차원
ncol(y)
nrow(y)

#column bind and row bind
one = rep(1,4)
z = matrix(c(5:8,rep(-1,4),rep(0,4)),4,3)
print(z)
cbind(one,z) #cbind == column bind 열을 갖다 붙힘.
rbind(z,2)

#Dataframe

#create dataframe 
#벡터 or 행열은 하나의 datatype만 포함가능
x=1:10
typeof(x) #integer
x[1] = "a"
typeof(x[2]) #character
x=matrix(1:4,2,2)
typeof(x) #integer 
x[2,2] ="b"
typeof(x) #character
#dataframe은 여러 자료형 포함 가능
kids = c("Jack", "Jill")
ages= c(12,10)
d= data.frame(kids,ages,stringsAsFactors = F) #기본값으로 strings(문자열)을 Factor(요인)으로 취급, 요인으로 취급하고 싶지 않다면 F추가
str(d)

#selecting the elements
#-selection column
d$ages #$ -> i'd like to choose 
class(d$ages) #numeric
class(d$kids) #character
names(d)
#-selecting by index
d[1,]
class(d[1,])

#cbind
A = data.frame(x1 = rep(0,10),x2 = rep('b',10))
B = data.frame(x3 = rep(1,10), x2=rep('d',10))
AB = cbind(A,B) 
head(AB) # 데이터 수가 많을 때 위에서 6개까지만 보여줌




