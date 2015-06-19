# set up files, url's and directories for files
# create URL for file to download
fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

# zip file to download 
dataFileZIP <- "./getdata-projectfiles-UCI-HAR-Dataset.zip"

# Directory
dirFile <- "./UCI HAR Dataset"

# Directory and filename (txt or csv) of the clean/tidy data:

tidyDataFile <- "./tidyUCIHARdataset.txt"

# tidyDataFileAVG <- "./tidy-UCI-HAR-dataset-AVG.csv"
# Directory and filename (.txt) of the clean/tidy data

tidyDataFileAVGtxt <- "./tidyUCIHARdataset_means.txt"

# Download the zipped data and check to see if it exists

if (file.exists(dataFileZIP) == FALSE) {
    download.file(fileURL, destfile = dataFileZIP)
}

# Unzip the file

if (file.exists(dirFile) == FALSE) {
    unzip(dataFileZIP)
}

# Question 1
# Merge the training and test datesets 

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Combine the data into rows using rbind

x <- rbind(x_train, X_test)
y <- rbind(y_train, y_test)
s <- rbind(subject_train, subject_test)

# Question 2
# Grab the means and standard deviations for each value
# Read features labels

features <- read.table("./UCI HAR Dataset/features.txt")

# Assign labels to features column

names(features) <- c('feat_id', 'feat_name')

# Search for matches to means or sd within file

index_features <- grep("-mean\\(\\)|-std\\(\\)", features$feat_name) 
x <- x[, index_features] 

# Replace string features 

names(x) <- gsub("\\(|\\)", "", (features[index_features, 2]))

# Questions 3 and 4
# Name the activities in the data set with descriptive names
# Read activity labels

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Assign labels to activities

names(activities) <- c('act_id', 'act_name')
y[, 1] = activities[y[, 1], 2]

names(y) <- "Activity"
names(s) <- "Subject"

# Create data frame that combines data table by columns

tidyDataSet <- cbind(s, y, x)

# Question 5
# Create a new tidy dataset with the average of each variable by each activity and subject

subSet <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
tidyDataAVGSet <- aggregate(subSet,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)

# Activity and Subject name of columns 
names(tidyDataAVGSet)[1] <- "Subject"
names(tidyDataAVGSet)[2] <- "Activity"

# Create tidy csv file

write.table(tidyDataSet, tidyDataFile)

# Created tidy average txt file

write.table(tidyDataAVGSet, tidyDataFileAVGtxt)
