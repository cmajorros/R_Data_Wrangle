#Data Wrangling with R
#Working with string
#Find nst position of a string
x <- "ApAP"
pos = regexpr('P', x) # Returns position of 1st match in a string
pos

pos = gregexpr('P', x) # Returns positions of every match in a string
pos


#find the length of string
Text <- "This is the test"
nchar(Text)

#find the length of data in each vector
TextVector <- c("This", "is", "the", "test")

# or using library stringi and stri_length
library("stringi")
stri_length(TextVector)
Length_of_Vector <- nchar((TextVector))
Length_of_Vector

#Substring the data
Text <- "This is the test"
substr(Text,1,4)

#Concatinate the data
String1 <- "This"
String2 <- "is"
String3 <- "the test"
#Alternative 1 (using paste)
paste(String1,String2, String3)
#Alternative 2 (using cat)
cat(String1,String2,String3)

#Change the data to uppercase and lower case
Text <- "This is the test"
UpperData <- toupper(Text) #For upper case
UpperData
LowerData <- tolower(Text)
LowerData

#Trim Space from text
Text <- " This is the test. "
nchar(Text)
TrimLeft <- trimws(Text,which = "left")  ## change "left" to "right" , "both" for right trim and both side trim
TrimLeft
nchar(TrimLeft)

#Replace data with another data
Text <- "This are the tests"
ReplaceText <- sub(pattern = "This", replacement = "These", Text) #Replace only first found text
ReplaceText

text2 <- "This This is test"
ReplaceAll <- gsub(pattern = "This", replacement = " ", text2) #Replace all
ReplaceAll

#split word
Text <= "This is test"
Splitoutput <- strsplit(Text, ' ')
Splitoutput


#Calculating the number
Name <- c("A","B","C", "D")
Age <- c(10,20,23,22)

#sum
SumAge <- sum(Age)
SumAge

#Average
AvgAge<- mean(Age)

#Average not null data
Age <- c(10,20,23,22,NA)
mean(Age , na.rm = TRUE)

#Max
max(Age, na.rm = TRUE)
min(Age, na.rm = TRUE)

#minus
A  <-10
B <- 11
C<- A-B

#Multiply
D<- A*B
D
#Divine
E<- A/B
E

#square root
sqrt(4)

#n root
rootn <- 3
x <- 8
result <- x^(1/rootn)
result

#log
x <- 2
log(x) #ln
log2(x) #log2(2) 

