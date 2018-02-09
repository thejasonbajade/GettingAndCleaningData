# You should create one R script called run_analysis.R that does the following.
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)

# Read all files as table.
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

# Read train files.
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)

# Read test files.
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)

# Update column names.
colnames(features) <- c("FeatureId", "Feature")
colnames(activityLabels) <- c("Activity", "ActivityLabel")

colnames(subjectTrain) <- "Subject"
colnames(xTrain) <- features[, "Feature"]
colnames(yTrain) <- "Activity"

colnames(subjectTest) <- "Subject"
colnames(xTest) <- features[, "Feature"]
colnames(yTest) <- "Activity"

# Combine all train data into 1 table
trainData <- cbind(subjectTrain, xTrain, yTrain)

# Combine all test data into 1 table
testData <- cbind(subjectTest, xTest, yTest)

# Combine train and test data into 1 table
completeData <- rbind(trainData, testData)

# Extract the measurements on the mean and standard deviation for each measurement.
meanAndStdData <- completeData[, grepl("mean|std|Subject|Activity", colnames(completeData))]

# Use descriptive activity names to name the activities in the data set.
meanAndStdData$Activity <- factor(meanAndStdData$Activity, levels=activityLabels[, "Activity"], labels=activityLabels[, "ActivityLabel"])

# Labels the data set with descriptive variable names.
colnames(meanAndStdData) <- gsub("^t", "Time", colnames(meanAndStdData))
colnames(meanAndStdData) <- gsub("^f", "Frequency", names(meanAndStdData))
colnames(meanAndStdData) <- gsub("std", "Std", names(meanAndStdData))
colnames(meanAndStdData) <- gsub("mean", "Mean", names(meanAndStdData))
colnames(meanAndStdData) <- gsub("Acc", "Acceleration", names(meanAndStdData))
colnames(meanAndStdData) <- gsub("Mag", "Magnitude", names(meanAndStdData))
colnames(meanAndStdData) <- gsub("BodyBody", "Body", names(meanAndStdData))

# Create a tidy data set with the average of each variable for each activity and each subject.
averagedData <- ddply(meanAndStdData, c("Subject","Activity"), numcolwise(mean))
write.table(averagedData, file="AveragedData.txt", row.names = FALSE)