#import Text file
Test_Import_Text1 <- read.table("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test.txt", 
                                header = FALSE)
Test_Import_Text1

Test_Import_Text2 <- read.table("C:/Users/User/Dropbox/My_Study/R-A-Z/Test_R_Text_File.txt")
Test_Import_Text2


#Import Excel
library(xlsx)
mydata <- read.xlsx("C:/Users/User/Desktop/Test_Data_Import_R_Excel.xlsx", 1)
#select data from worksheet
mydata <- read.xlsx("C:/Users/User/Desktop/Test_Data_Import_R_Excel.xlsx", sheetName = "Sheet2")
mydata

library(xlsx)
test1 <- read.xlsx("C:/Users/User/Dropbox/My_Study/R-A-Z/test2.xlsx", 1)
#select data from worksheet
test1 <- read.xlsx("C:/Users/User/Dropbox/My_Study/R-A-Z/test2.xlsx", sheetName = "Sheet1")
test1
test2 <- read.xlsx("C:/Users/User/Dropbox/My_Study/R-A-Z/test2.xlsx", sheetName = "Sheet2")
test2

mydataFirst <- read.xlsx("C:/Users/User/Desktop/Test_Data_Import_R_Excel.xlsx", 1)
#select data from worksheet
mydataFirst <- read.xlsx("C:/Users/User/Desktop/Test_Data_Import_R_Excel.xlsx", sheetName = "Sheet1")
mydataFirst

#Import CSV
mydataCSV <- read.table("C:/Users/User/Dropbox/My_Study/R-A-Z/Test_R_CSV_COMMA_DIL.csv", 
                        header=TRUE, sep=",", row.names="Contract")
mydataCSV


#Connect with Database
#Connect with MySQL

library(RODBC)
#1) You need to DSN Name <-- Go to Control Panel < Administrative tool < ODBC Datasource < user DSN Tab
#2) Get the name of yours or create new by selecting add < select DataBase name < add ODBC connection <OK <OK
#3) I use mysql for the example. For MS Access , mS SQL . I think we can do the same way

myconn <-odbcConnect("myclass", uid="siroros", pwd="1234") #myclass in my DNS Name
FetchingTable <- sqlFetch(myconn, "Students")
MyDataSource <- sqlQuery(myconn, "select * from students")
MyDataSource 
close(myconn)



