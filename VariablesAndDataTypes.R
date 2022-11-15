a = 1
b <- 2
typeof(a)
str = 'cse'
str1 = "aiml"
fl = 3.5
id <- TRUE
comp = 3+2i
typeof(comp)
typeof(id)
typeof(fl)
typeof(str)
print(a)

#user input
no = readline(prompt = "Enter number :")
no1 = as.integer(readline(prompt = "Enter number :"))
no = as.integer(no)

#functions
force = function(m,a){
  f = m*a
  print(f)
}
force(5,10)

#vector
vec = c(1,2,3,4)
vec

#matrix
mat = matrix(vec,nrow=2)
mat

mat = 2*mat
mat = mat*mat
m_mat = mat%*%mat

#web scrapping
install.packages("rvest")
install.packages("robotstext")

library(rvest)
library(robotstxt)
url<- 'https://www.imdb.com/chart/top/'
path=paths_allowed(url)
#html elements from the website
my_html<- read_html(url)
#segregating tables
my_tables<-html_nodes(my_html,'table')
#extracting table
movie_table<-html_table(my_tables)[[1]]
#saving
write.csv(movie_table,"movie.csv")
#datatype check
str(movie_table)
