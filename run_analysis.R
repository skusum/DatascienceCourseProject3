library(plyr)
## reads all the required data stored in 'projectdata' folder
dat1 <- read.table("./projectdata/X_test.txt")
dat2 <- read.table("./projectdata/X_train.txt")
dat3 <- read.table("./projectdata/features.txt")
dat4 <- read.table("./projectdata/activity_labels.txt")
dat5 <- read.table("./projectdata/subject_test.txt")
dat6 <- read.table("./projectdata/subject_train.txt")
dat7 <- read.table("./projectdata/y_test.txt")
dat8 <- read.table("./projectdata/y_train.txt")

## combines the X-data, subject data and y-data(activity data) for test and train row-wise
dat11 <- rbind(dat1, dat2)  ##X-datas(561 columns)
dat9 <- rbind(dat5, dat6)  ##Subject-datas(one column)
dat10 <- rbind(dat7, dat8)  ##y-data(activity data, one column)

##assigns the column names for the resulting combined datas
colnames(dat11) <- dat3[ , 2]
colnames(dat9) <- "Subject"
colnames(dat10) <- "Activity"

## subsetting the data with the columns with mean() or std()
subcol <- c()
for (i in 1:561){
  if (grepl("mean()|std()", dat3[i, 2]))
  {subcol <- append(subcol, i)
  }}
dat12 <-dat11[, subcol]  ## subset

## combining the subject column, Activity column and the subset of the main data columnwise
dat13 <- cbind(dat9, dat10, dat12)

## grouping the data with subject and then activity and finding the column mean of each group
## and putting it back to a dataframe
dat14 <- ddply(dat13, c("Subject", "Activity"), function(df)c(sapply(df[ , 3:81], mean)))

## creating a column with Activity names
Activity_Name <- c()
for (i in 1:180){
    if (dat14[i, 2]==1){
    aname <- "Walking"
    Activity_Name <- append(Activity_Name, aname)    
  }
  if (dat14[i, 2]==2){
    aname <- "Walking_Upstairs"
    Activity_Name <- append(Activity_Name, aname)    
  }
  if (dat14[i, 2]==3){
    aname <- "Walking_downstairs"
      Activity_Name<- append(Activity_Name, aname)    
  }
  if (dat14[i, 2]==4){
    aname <- "Sitting"
      Activity_Name <- append(Activity_Name, aname)    
  }
  if (dat14[i, 2]==5){
    aname <- "Standing"
    Activity_Name<- append(Activity_Name, aname)   
  }
  if (dat14[i, 2]==6){
    aname <- "Laying"
    Activity_Name <- append(Activity_Name, aname)    
  }
  
}

## combining the Activity_Name column to the  data
dat15 <- cbind(Activity_Name, dat14)

##switching the first two columns so that the Subject column appears first, just to make the data look nicer??
dat15 <- dat15[ , c(2, 1, 3:82)]
## This is my Tidy Data
