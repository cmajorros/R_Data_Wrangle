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
#convert text to number
text <- '22'
number = 2 + as.numeric(text)
number

#Data Conversion
#convert number to text
number = 22
text = as.character(number)
text

#convert text to date
#R format date YYYY-MM-DD
#How to convert original format to R format 
#Use % as seperator of day , month and year
#Apply the format of orginal data such as - or / 
#if the Month is not the numuriC format (eg, Jul ,Sep). To convert the month 
#it needs %B instead of %m
# Example of Date format
# 20/02/2016 = "%d/%m/%y"
# 20Feb2016 = "%d%B%y"

DateFull <- c("25Jun1916", "26Jun2016", "28Jul2016")
DateShort <- c("25/06/1916", "26/06/2016", "28/06/2016")
DateFull2 <- c("25June1916","26Jun2016","28June2016")
DateTest <- data.frame(DateFull,DateShort,DateFull2)
DateTest
ConvertDateFull <- as.Date(DateTest$DateFull , format = "%d%B%Y")
ConvertDateShort <- as.Date(DateTest$DateShort, format = "%d/%m/%Y")
ConvertDateFull2 <- as.Date(DateTest$DateFull , format = "%d%B%Y")
DateTest <- data.frame(DateTest,ConvertDateFull,ConvertDateShort,ConvertDateFull2)
DateTest

#datedif
start <- as.Date("2016-01-05", format = "%Y-%m-%d")
end <- as.Date("2016-05-05", format = "%Y-%m-%d")
diff_in_days = difftime(end, start, units = "days") # days
diff_in_days

#week dif
diff_in_week  = difftime(end, start, units="weeks" )
diff_in_week

#hour dif
diff_in_hour  = difftime(end, start, units="hours" ) #can change to secs , mins, hours,days ,week
diff_in_hour

#monthdif
diff_in_month = diff_in_days/30
diff_in_month

#year dif
diff_in_year = diff_in_days/365
diff_in_year 


library(lubridate)
#dateadd 
dateadd <- start + days(2)
monthadd <- start +month(2)
yearadd <- start - years(2)
start
dateadd
monthadd
yearadd

#Extract Day, month, year
start
typeof(start)
day(start)
month(start)
year(start)
weekdays(start)

