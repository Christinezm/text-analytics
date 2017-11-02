print("a")

#1.
print("\"")
print('"')

cat("\"")
cat("ab\ncd")  ## \n means a new line
cat("a\tb\nc\td")  ## \t means a space

#2.

cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3.

library(stringr)
?str_locate
?str_sub

#4.
str_locate(string = "great", pattern = "a")
list = c("great","fantastic","super")
str_locate(string = list, pattern = "a")
occurance = str_locate_all(string = list, pattern = "a")

occurance[1]
x = occurance[[1]]
x[1]

## or 
occurance[[1]][1]

#5

str_sub(string = "testing", start = 1, end = 3)
str_sub(string = "testing", end = 3)  # the same 
str_sub("testing", start = 4, end = str_length("testing")) # end defalt to be the very end

nchar("testing")
str_length("testing")
length("testing")


#6.
input <- c("abc","defg")
str_sub(input, c(2,3))

input <- c("abc","defg","sjdhskd")
str_sub(input, c(2,3))  # error: because there should be c(x,x,x)

#7.

emails = readRDS("email(1).rds")
emails 
emails[1]
cat(emails[1])
cat(emails[10])

str_locate(string = emails[1],
           pattern = "\n")
str_locate(string = emails[1],
           pattern = "\n\n")


#8.

metadata1 = str_sub(string = emails[1], 
                  start = 1, 
                  end = 842)

body1 = str_sub(string = emails[1], 
                start = 844)

cat(metadata1)
cat(body1)

#9.

str_split(string = metadata1,
          pattern = "\n")

#10

breaks = str_locate(string = emails,
           pattern = "\n\n")

metadata = str_sub(string = emails,
                   start = 1,
                   end = breaks[,1])
body = str_sub(string = emails,
               start = breaks[,2])






