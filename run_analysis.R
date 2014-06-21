# read all data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = F)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = F, colClasses = "factor")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = F)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = F)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = F, colClasses = "factor")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = F)
feature <- read.table("UCI HAR Dataset/features.txt", header = F)

# assign col names
names(subject_train) <- "subject"
names(subject_test) <- "subject"
names(y_train) <- "activity"
names(y_test) <- "activity"
names(x_train) <- feature[,2] 
names(x_test) <- feature[,2] 

# describe the activity
levels(y_train[,1]) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
levels(y_test[,1]) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

# merge train and test data
train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)

# set train and test data into one dataset
data <- rbind(train, test)

# get the required label of std and mean
varlist.std <- names(data)[grep("std()", names(data))]
varlist.mean <- names(data)[grep("mean()", names(data))]

# get the required data
data2 <- data[,c("activity", "subject",  varlist.mean, varlist.std)]

# calculate mean for each activity and each subject 
library("reshape")
tidy.data <- cast(melt(data2, id = c("activity", "subject")), activity + subject ~ variable, mean)

# write the tidy data
write.csv(tidy.data, "tidy.data.csv")
