#Working with vector 
#Vector is like array in other programmming but array need looping when calculate but vector can
#be use directly and easier

#Creating vector 
Name <- c("A", "B", "C","D")
Name
Age <- c(10,20,30,12,14)
Age

#Edit vector
Name[1] <- "AA"
Name

#Delete Vector
Name[4]<- NA
Name

#creating Matrix
Name <- c("A", "B", "C","D")
Name
LastName <- c("AA","BB", "CC","DD")
LastName

Name_Lastname <- c(Name,LastName) # data will concatinate in the same row
Name_Lastname
Name_Lastname <- rbind(Name, LastName) # data will concatinate in new row
Name_Lastname
Name_Lastname <- cbind(Name, LastName) # data will concatinate in the new column
Name_Lastname


#Accessing the data 
#It is like when we need to access the data from vector
Name_Lastname[1,1] #need to specify Number of row and column
Name_Lastname[1:3,1] #can specify the range of data
Name_Lastname[1:3,] #Select All column

#Delete the data from matrix
Name_Lastname[1,1] <- NA
Name_Lastname

#UpdateData in the matrix
Name_Lastname[1,1] <- "A"

#Working with data frame 
# Data frame is like the matrix but matrix allow data which have the same type, but data frame 
# can have the many types of data. it is much more like data set in excel or database
 
rm(Student)
Student
#Creating the data frame
Student <- data.frame(Name = "A", Age = 20, Major = 'Engineer')
Student

#Add row of data to data frame 
NewStudent <- data.frame("Name"= "B", "Age"=22, "Major"="Humanity")
Student <- rbind(Student,NewStudent)
Student
#Add newcolumn
HomeTown <- c("CA","AZ") ##Number of data should have the equal record with the original data frame
Student <- cbind(Student,HomeTown)
Student

#Select Data
Student[1:2,1]

#Select data with conditions
Student[Student$Age == 20 & Student$HomeTown == "CA",]


#Delete row of Data from data frame
Student<- Student[-2,]

#Delete column from data frame
Student<- Student[,-3]
Student

## Deleting is like when you selecting the data but just add - (negative) to the row or column number

