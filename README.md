Getting and Cleaning Data Course Project
This project contains one R script, run_analysis.R, which will calculate means 
per activity, per subject of the mean and Standard deviation of the 
Human Activity Recognition Using Smartphones Dataset Version 1.0 [1]. 
The run_analysis.R script will download and unzip the data into the user's
current working directory.

For each record it is provided:
Triaxial acceleration from the accelerometer (total acceleration) and the 
estimated body acceleration.
Triaxial Angular velocity from the gyroscope. 
A 561-feature vector with time and frequency domain variables. 
Its activity label. 
An identifier of the subject who carried out the experiment.
The dataset includes the following files:

'README.txt'
'features_info.txt': Shows information about the variables used on the feature 
vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their 
descriptions are equivalent. 

'train/subject_train.txt': Each row identifies the subject who performed the 
activity for each window sample. Its range is from 1 to 30. 
'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from 
the smartphone accelerometer X axis in standard gravity units 'g'. Every row 
shows a 128 element vector. The same description applies for the 
'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal 
obtained by subtracting the gravity from the total acceleration. 
'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector 
measured by the gyroscope for each window sample. The units are radians/second. 
Once executed, the scrip will create the resulting tidy dataset that can be 
found in the following directory:

./tidyUCIHARdataset.txt

The script will also create a dataset that contains the means and sds per
activity and each user.  This resulting dataset can be found at:

./tidyUCIHARdataset_mean_sd

For futher details, refer to Codebook.md

References

[1] Human Activity Recognition on Smartphones using a Multiclass 
Hardware-Friendly Support Vector Machine. International Workshop of 
Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 
activityrecognition@smartlab.ws -  Davide Anguita, Alessandro Ghio, Luca Oneto, 
Xavier Parra and Jorge L. Reyes-Ortiz. 

