
##########################################################
##### Getting and Cleaning Data Project Course       #####
##########################################################
##
## To run this code you must have dplyr package installed. 
## The sequence in this code does not follow the exercise
##  sequence. 
##    Init: loading data
##    Step 1: Creating only one data set
##    Step 4: Changing variables names. This step turns the variable
##            more readable. 
##    Step 2: Extract only means and standard deviations.
##    Step 3: Changing activities names. This spet changes the numbers to text. 
##    Step 5: Group, summarizing and writting the content into a file. 
## 
##


# loading dplyr
library(dplyr)


# reading the data files X (train and test)
test <- read.table("UCI HAR Dataset//test//X_test.txt")
train <- read.table("UCI HAR Dataset//train//X_train.txt")

# reading labels from features.
labels <- read.table("UCI HAR Dataset/features.txt")

# The script is reading the subjects...
trainSubject <- read.table("UCI HAR Dataset//train//subject_train.txt")
testSubject <- read.table("UCI HAR Dataset//test//subject_test.txt")

# now reading the Activities
testY <- read.table("UCI HAR Dataset//test//y_test.txt")
trainY <- read.table("UCI HAR Dataset//train//y_train.txt")




##### STEP 1 #####
## Creating only one dataset... 

# Creating two factors to indicate in data.frame whether the activity is test or train. 
testFactor <- as.factor(c("test"))
trainFactor <- as.factor(c("train"))

# The script is adding testFactor and train factor in a column called DataMode
test <- cbind(test,DataMode=testFactor)
train <- cbind(train,DataMode=trainFactor)

# I'm using rbind to add test and train data frames in one called projectTable.
projectTable <- rbind(test,train)

# Now adding the activities and subjects in one data.frame. 
projectY <- rbind(testY,trainY)
projectSubject <- rbind(testSubject,trainSubject)

# adding Subject and Activity into main data.frame.
projectTable <- cbind(projectTable,Subject=projectSubject)
projectTable <- cbind(projectTable,Activity=projectY)



##### STEP 4 #####
## Changing the variables names.

#At this point I'm beginning organizing the labels. 

vetLabels <- as.character(labels$V2)

# firs, I've contructed two arrays (from: original words to be replaced) and to(the new words)

from <- c("\\W","tBody","Acc","Gyro","Mag","tGravity","fBody","mean","std","mad","max","min","sma","bandsenergy","iqr",
           "entropy","skewness","Kurtosis")

to <- c("","TimeBody","Acceleration","Gyroscope","Magnitude","TimeGravity","FrequencyBody","Mean","Std","Mad","Max","Min","SignalMagnitudeArea","BandsEnergy","Interquartile",
            "SignalEntropy","Skewness", "Kurtosis")

#Just a counter...
cont <- 1

# for to change label names with gsub.
for(str in from) {  
  vetLabels <- gsub(str,to[cont],vetLabels)
  cont <- cont+1
}
  
# ... and adding "DataMode", "Subject" and "Activity"
vetLabels <- c(vetLabels,"DataMode","Subject","Activity")


# Changing the data.frame variable names.
names(projectTable) <- vetLabels



##### STEP 2 #####
#Extracting only the mean and stds

# now I'm extracting only the required columns (means and Stds)
data <- projectTable[,grep("Mean",names(projectTable))]
data <- cbind(data,projectTable[,grep("Std",names(projectTable))])

# adding into data data.frame important columns (DataMode,Subject and Activity)
data <- cbind(data,DataMode=projectTable$DataMode)
data <- cbind(data,Subject=projectTable$Subject)
data <- cbind(data,Activity=projectTable$Activity)



##### STEP 3 #####
## Changing the activities names.

data$Activity[data$Activity == 1] <- "WALKING"
data$Activity[data$Activity == 2] <- "WALKING_UPSTAIRS"
data$Activity[data$Activity == 3] <- "WALKING_DOWNSTAIRS"
data$Activity[data$Activity == 4] <- "SITTING"
data$Activity[data$Activity == 5] <- "STANDING"
data$Activity[data$Activity == 6] <- "LAYING"


#Arranging the data to be readable.
data <- arrange(data,Activity)


##### STEP 5 #####

# Extracting the mean through summarise_each. The result is grouped by Activity and Subject.
summarizedTable <- data %>% group_by(Activity,Subject) %>% summarise_each( funs(mean))


#Writing the result file. 
write.table(summarizedTable,file = "project_result.txt",row.name=FALSE)



rm(labels)
rm(projectSubject)
rm(projectTable)
rm(projectY)
rm(test)
rm(testSubject)
rm(testY)
rm(train)
rm(trainFactor)
rm(trainSubject)
rm(trainY)
rm(cont)
rm(from)
rm(str)
rm(testFactor)
rm(to)
rm(vetLabels)
rm(data)


head(summarizedTable)




