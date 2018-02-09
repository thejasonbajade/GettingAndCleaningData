# Code Book

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcceleratio-XYZ and TimeGyro-XYZ. These time domain signals (Time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMagnitude, TimeGravityAccelerationMagnitude, TimeBodyAccelerationJerkMagnitude, TimeBodyGyroMagnitude, TimeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMagnitude, FrequencyBodyGyroMagnitude, FrequencyBodyGyroJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* TimeBodyAcceleration-XYZ
* TimeGravityAcceleration-XYZ
* TimeBodyAccelerationJerk-XYZ
* TimeBodyGyro-XYZ
* TimeBodyGyroJerk-XYZ
* TimeBodyAccelerationMagnitude
* TimeGravityAccelerationMagnitude
* TimeBodyAccelerationJerkMagnitude
* TimeBodyGyroMagnitude
* TimeBodyGyroJerkMagnitude
* FrequencyBodyAcceleration-XYZ
* FrequencyBodyAccelerationJerk-XYZ
* FrequencyBodyGyro-XYZ
* FrequencyBodyAccelerationMagnitude
* FrequencyBodyAccelerationJerkMagnitude
* FrequencyBodyGyroMagnitude
* FrequencyBodyGyroJerkMagnitude

#### The set of variables that were estimated from these signals are: 

* Mean(): Mean value
* Std(): Standard deviation

#### The complete list of variables is as follows:

* Subject
    + [1..30]
* Activity
    + { WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING }
* TimeBodyAcceleration-Mean()-X
* TimeBodyAcceleration-Mean()-Y
* TimeBodyAcceleration-Mean()-Z
* TimeBodyAcceleration-Std()-X
* TimeBodyAcceleration-Std()-Y
* TimeBodyAcceleration-Std()-Z
* TimeGravityAcceleration-Mean()-X
* TimeGravityAcceleration-Mean()-Y
* TimeGravityAcceleration-Mean()-Z
* TimeGravityAcceleration-Std()-X
* TimeGravityAcceleration-Std()-Y
* TimeGravityAcceleration-Std()-Z
* TimeBodyAccelerationJerk-Mean()-X
* TimeBodyAccelerationJerk-Mean()-Y
* TimeBodyAccelerationJerk-Mean()-Z
* TimeBodyAccelerationJerk-Std()-X
* TimeBodyAccelerationJerk-Std()-Y
* TimeBodyAccelerationJerk-Std()-Z
* TimeBodyGyro-Mean()-X
* TimeBodyGyro-Mean()-Y
* TimeBodyGyro-Mean()-Z
* TimeBodyGyro-Std()-X
* TimeBodyGyro-Std()-Y
* TimeBodyGyro-Std()-Z
* TimeBodyGyroJerk-Mean()-X
* TimeBodyGyroJerk-Mean()-Y
* TimeBodyGyroJerk-Mean()-Z
* TimeBodyGyroJerk-Std()-X
* TimeBodyGyroJerk-Std()-Y
* TimeBodyGyroJerk-Std()-Z
* TimeBodyAccelerationMagnitude-Mean()
* TimeBodyAccelerationMagnitude-Std()
* TimeGravityAccelerationMagnitude-Mean()
* TimeGravityAccelerationMagnitude-Std()
* TimeBodyAccelerationJerkMagnitude-Mean()
* TimeBodyAccelerationJerkMagnitude-Std()
* TimeBodyGyroMagnitude-Mean()
* TimeBodyGyroMagnitude-Std()
* TimeBodyGyroJerkMagnitude-Mean()
* TimeBodyGyroJerkMagnitude-Std()
* FrequencyBodyAcceleration-Mean()-X
* FrequencyBodyAcceleration-Mean()-Y
* FrequencyBodyAcceleration-Mean()-Z
* FrequencyBodyAcceleration-Std()-X
* FrequencyBodyAcceleration-Std()-Y
* FrequencyBodyAcceleration-Std()-Z
* FrequencyBodyAcceleration-MeanFreq()-X
* FrequencyBodyAcceleration-MeanFreq()-Y
* FrequencyBodyAcceleration-MeanFreq()-Z
* FrequencyBodyAccelerationJerk-Mean()-X
* FrequencyBodyAccelerationJerk-Mean()-Y
* FrequencyBodyAccelerationJerk-Mean()-Z
* FrequencyBodyAccelerationJerk-Std()-X
* FrequencyBodyAccelerationJerk-Std()-Y
* FrequencyBodyAccelerationJerk-Std()-Z
* FrequencyBodyAccelerationJerk-MeanFreq()-X
* FrequencyBodyAccelerationJerk-MeanFreq()-Y
* FrequencyBodyAccelerationJerk-MeanFreq()-Z
* FrequencyBodyGyro-Mean()-X
* FrequencyBodyGyro-Mean()-Y
* FrequencyBodyGyro-Mean()-Z
* FrequencyBodyGyro-Std()-X
* FrequencyBodyGyro-Std()-Y
* FrequencyBodyGyro-Std()-Z
* FrequencyBodyGyro-MeanFreq()-X
* FrequencyBodyGyro-MeanFreq()-Y
* FrequencyBodyGyro-MeanFreq()-Z
* FrequencyBodyAccelerationMagnitude-Mean()
* FrequencyBodyAccelerationMagnitude-Std()
* FrequencyBodyAccelerationMagnitude-MeanFreq()
* FrequencyBodyAccelerationJerkMagnitude-Mean()
* FrequencyBodyAccelerationJerkMagnitude-Std()
* FrequencyBodyAccelerationJerkMagnitude-MeanFreq()
* FrequencyBodyGyroMagnitude-Mean()
* FrequencyBodyGyroMagnitude-Std()
* FrequencyBodyGyroMagnitude-MeanFreq()
* FrequencyBodyGyroJerkMagnitude-Mean()
* FrequencyBodyGyroJerkMagnitude-Std()
* FrequencyBodyGyroJerkMagnitude-MeanFreq()

#### Source:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012