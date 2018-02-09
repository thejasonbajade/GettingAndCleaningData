# Averaged Dataset From "Human Activity Recognition Using Smartphones Dataset"


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The original obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

In this derived dataset, the training and test data are combined.

### For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* An identifier of the subject who carried out the experiment.

### The dataset includes the following files:

* README.md
* CodeBook.md: Shows information about the variables/columns used in the dataset.
* AveragedData.txt: Text file that contains the average of each variable for each activity and each subject.
* run_analysis.R: An R script that processes the original data to come up with the new tidy data, AveragedData.txt.

### Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### Source:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Link to Original Dataset: 
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip