# Load the libraries
library(dplyr)

# Load the data test data
xtest <- read.delim("X_test.txt",header = FALSE, sep="") # main test data
ytest <- read.delim("y_test.txt",header = FALSE) # test activity data
subjecttest <- read.delim("subject_test.txt",header = FALSE) # test subject data

xtrain <- read.delim("X_train.txt",header = FALSE, sep="") # main train data
ytrain <- read.delim("y_train.txt",header = FALSE) # train activity data
subjecttrain <- read.delim("subject_train.txt",header = FALSE) # train subject data

features <- read.delim("features.txt",header = FALSE) # features data (column headings)

# Add the headings to the test data
names(xtest) <- features$V1
# Add the activity column
names(ytest) <- c("activity")
# Add the subject column
names(subjecttest) <- c("subject")

# Bind the full test data
fulltest <- cbind(subjecttest,ytest,xtest)

# Add the headings to the train data
names(xtrain) <- features$V1
# Add the activity column
names(ytrain) <- c("activity")
# Add the subject column
names(subjecttrain) <- c("subject")

# Bind the full train data
fulltrain <- cbind(subjecttrain,ytrain,xtrain)

# Merge both train and test data into one data set
fulldata <- rbind(fulltest,fulltrain)

# Trim the full data set to include only the Mean and Standard Deviation (std) columns,
# Besides the subject and activity columns.
fulldata <- select(fulldata,grep("(^subject$)|(^activity$)|([Mm]ean)|([Ss]td)",names(fulldata)))

# Replace the activity numbers with the descriptive activity labels.
fulldata$activity <- sub("1","1 WALKING",fulldata$activity)
fulldata$activity <- sub("2","2 WALKING_UPSTAIRS",fulldata$activity)
fulldata$activity <- sub("3","3 WALKING_DOWNSTAIRS",fulldata$activity)
fulldata$activity <- sub("4","4 SITTING",fulldata$activity)
fulldata$activity <- sub("5","5 STANDING",fulldata$activity)
fulldata$activity <- sub("6","6 LAYING",fulldata$activity)

# Summarize the data, grouping by subject and activity.
fulldatasummary <- fulldata %>% group_by(subject,activity) %>% summarize_each(funs(mean))

# Output the summarized data into a file.
write.table(fulldatasummary,"fulldatasummary.txt",row.name = FALSE)


