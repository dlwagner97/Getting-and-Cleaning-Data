Codebook

Input Data
The script assumes the UCI dataset is extracted directly into ./data/. See the 
README.md for further details.

ID Fields

subject - The participant ("subject") ID
activity - The label of the activity performed when the corresponding 
measurements were taken

Variables Produced 

"Subject" 
"Activity"
"tBodyAcc-mean-X" 
"tBodyAcc-mean-Y" 
"tBodyAcc-mean-Z" 
"tBodyAcc-std-X" 
"tBodyAcc-std-Y" 
"tBodyAcc-std-Z" 
"tGravityAcc-mean-X" 
"tGravityAcc-mean-Y" 
"tGravityAcc-mean-Z" 
"tGravityAcc-std-X" 
"tGravityAcc-std-Y" 
"tGravityAcc-std-Z" 
"tBodyAccJerk-mean-X" 
"tBodyAccJerk-mean-Y" 
"tBodyAccJerk-mean-Z" 
"tBodyAccJerk-std-X" 
"tBodyAccJerk-std-Y" 
"tBodyAccJerk-std-Z" 
"tBodyGyro-mean-X" 
"tBodyGyro-mean-Y" 
"tBodyGyro-mean-Z" 
"tBodyGyro-std-X" 
"tBodyGyro-std-Y" 
"tBodyGyro-std-Z" 
"tBodyGyroJerk-mean-X" 
"tBodyGyroJerk-mean-Y" 
"tBodyGyroJerk-mean-Z" 
"tBodyGyroJerk-std-X" 
"tBodyGyroJerk-std-Y" 
"tBodyGyroJerk-std-Z" 
"tBodyAccMag-mean" 
"tBodyAccMag-std" 
"tGravityAccMag-mean" 
"tGravityAccMag-std" 
"tBodyAccJerkMag-mean" 
"tBodyAccJerkMag-std" 
"tBodyGyroMag-mean" 
"tBodyGyroMag-std" 
"tBodyGyroJerkMag-mean" 
"tBodyGyroJerkMag-std" 
"fBodyAcc-mean-X" 
"fBodyAcc-mean-Y" 
"fBodyAcc-mean-Z" 
"fBodyAcc-std-X" 
"fBodyAcc-std-Y" 
"fBodyAcc-std-Z" 
"fBodyAccJerk-mean-X" 
"fBodyAccJerk-mean-Y" 
"fBodyAccJerk-mean-Z" 
"fBodyAccJerk-std-X" 
"fBodyAccJerk-std-Y" 
"fBodyAccJerk-std-Z" 
"fBodyGyro-mean-X" 
"fBodyGyro-mean-Y" 
"fBodyGyro-mean-Z" 
"fBodyGyro-std-X" 
"fBodyGyro-std-Y" 
"fBodyGyro-std-Z" 
"fBodyAccMag-mean" 
"fBodyAccMag-std" 
"fBodyBodyAccJerkMag-mean" 
"fBodyBodyAccJerkMag-std" 
"fBodyBodyGyroMag-mean" 
"fBodyBodyGyroMag-std" 
"fBodyBodyGyroJerkMag-mean" 
"fBodyBodyGyroJerkMag-std"

Activity Labels

WALKING (value 1)
WALKING_UPSTAIRS (value 2)
WALKING_DOWNSTAIRS (value 3)
SITTING (value 4)
STANDING (value 5)
LAYING (value 6)


How `run_analysis.R` implements the above steps:

Checks if the file exists, otherwise it downloads;
Checks if the file has already been extracted to the directory;
Load both test and train data;
Load the features and activity labels;
Extract the mean and standard deviation column names and data;
Process the data;
Merge and creates data set: 


The result is saved as "./tidyUCIHARdataset_mean_sd.txt", a 180x68 data table 
(181 with column name), where as before, the first column contains subject IDs, 
the second column contains activity names (see above), and then the averages 
for each of the 66 attributes are in columns 3...68. There are 30 subjects and 
6 activities, thus 180 rows in this data set with averages.
