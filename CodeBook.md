#Codebook 
This description borrows heavily from the "features_info.txt" file in the original UCI HAR dataset. For reference, the original codebooks (features_info.txt and readme.txt) are reproduced at the bottom of this document.

The variables in the "tidy" dataset represent the mean value of each variable type described below.
The mean value is the mean of the "mean" and "standard deviation" columns extracted from the original dataset.

##Derivation of original dataset
The original dataset (ie not this tidy dataset) values were obtained from:

1. Accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
 
2. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

3. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

4. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

(In the tidy dataset, time-domain signal names start with "Time" and frequency domain signals start with "Frequency".)

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

		tBodyAcc-XYZ
		tGravityAcc-XYZ
		tBodyAccJerk-XYZ
		tBodyGyro-XYZ
		tBodyGyroJerk-XYZ
		tBodyAccMag
		tGravityAccMag
		tBodyAccJerkMag
		tBodyGyroMag
		tBodyGyroJerkMag
		fBodyAcc-XYZ
		fBodyAccJerk-XYZ
		fBodyGyro-XYZ
		fBodyAccMag
		fBodyAccJerkMag
		fBodyGyroMag
		fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

		gravityMean
		tBodyAccMean
		tBodyAccJerkMean
		tBodyGyroMean
		tBodyGyroJerkMean

A subset  of variables that were estimated from these signals and present in the tidy dataset are: 

**mean** Mean value

**std**  Standard deviation

#The tidy dataset
Note that the tidy dataset contains the means of the original dataset's mean and standard deviation values.

##Tidy dataset format

**File format**	comma separated variable. Each variable name and value is separated by a comma.
  
**Row 1**	Variable names. Each variable name is enclosed in ASCII double quotes.

**Rows 2 onwards** observations

##Variables

Where variables represent one ordinate of an X-Y-Z triple, only the X variable is described in the table below.
Where "gravity" is mentioned, this is the vector due to gravity. 

Variable name | Type | Purpose
------------- | ----- | ----
TimeBodyAccelerometerMeanX | numeric | Mean of mean accelerometer values in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyAccelerometerMeanY | numeric | As above, in Y direction.
TimeBodyAccelerometerMeanZ | numeric | As above, in Z direction.
TimeBodyAccelerometerStandarddeviationX | numeric | Mean of mean accelerometer standard deviation values in X direction of subject performing activity.
TimeBodyAccelerometerStandarddeviationY | numeric | As above, in Y direction.
TimeBodyAccelerometerStandarddeviationZ | numeric | As above, in Z direction.
TimeGravityAccelerometerMeanX | numeric | Mean of mean accelerometer values due to gravity of subject performing activity.
TimeGravityAccelerometerMeanY | numeric | As above, in Y direction.
TimeGravityAccelerometerMeanZ | numeric | As above, in Z direction.
TimeGravityAccelerometerStandarddeviationX | numeric | Mean of standard deviation of acceleration due to gravity of subject performing activity | 
TimeGravityAccelerometerStandarddeviationY | numeric | As above, in Y direction.
TimeGravityAccelerometerStandarddeviationZ | numeric | As above, in Z direction.
TimeBodyAccelerometerJerkMeanX | numeric | Mean of "jerk" (ie instantaneous acceleration along a different vector) in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyAccelerometerJerkMeanY | numeric | As above, in Y direction.
TimeBodyAccelerometerJerkMeanZ | numeric | As above, in Z direction.
TimeBodyAccelerometerJerkStandarddeviationX | numeric | Mean of standard deviation of "jerk" (ie instantaneous acceleration along a different vector) in X direction of subject performing activity.
TimeBodyAccelerometerJerkStandarddeviationY | numeric | As above, in Y direction.
TimeBodyAccelerometerJerkStandarddeviationZ | numeric | As above, in Z direction.
TimeBodyGyroscopeMeanX | numeric | Mean of mean gyroscope value in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyGyroscopeMeanY | numeric | As above, in Y direction.
TimeBodyGyroscopeMeanZ | numeric | As above, in Z direction.
TimeBodyGyroscopeStandarddeviationX | numeric | Mean of standard deviation of gyroscope value in X direction of subject performing activity
TimeBodyGyroscopeStandarddeviationY | numeric | As above, in Y direction.
TimeBodyGyroscopeStandarddeviationZ | numeric | As above, in Z direction.
TimeBodyGyroscopeJerkMeanX | numeric | Mean of mean "jerk" in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyGyroscopeJerkMeanY | numeric | As above, in Y direction.
TimeBodyGyroscopeJerkMeanZ | numeric | As above, in Z direction.
TimeBodyGyroscopeJerkStandarddeviationX | numeric | Mean of standard deviation of "jerk" in X direction of subject performing activity.
TimeBodyGyroscopeJerkStandarddeviationY | numeric | As above, in Y direction.
TimeBodyGyroscopeJerkStandarddeviationZ | numeric | As above, in Z direction.
TimeBodyAccelerometerMagnitudeMean | numeric | Mean of mean of magnitude of acceleration of body (calculated via Euclidean norm)
TimeBodyAccelerometerMagnitudeStandarddeviation | numeric | Mean of standard deviation of magnitude of acceleration of body (calculated via Euclidean norm)
TimeGravityAccelerometerMagnitudeMean | numeric | Mean of mean of magnitude of acceleration due to gravity (calculated via Euclidean norm)
TimeGravityAccelerometerMagnitudeStandardeviation | numeric | Mean of standard deviation of magnitude of acceleration due to gravity (calculated via Euclidean norm)
TimeBodyAccelerometerJerkMagnitudeMean | numeric | Mean of mean of magnitude of "jerk" of body (calculated via Euclidean norm)
TimeBodyAccelerometerJerkMagnitudeStandarddeviation | numeric | Mean of standard deviation of magnitude of "jerk" of body (calculated via Euclidean norm)
TimeBodyGyroscopeMagnitudeMean | numeric | Mean of mean of magnitude of gyroscope value (calculated via Euclidean norm) of body, subject performing activity
TimeBodyGyroscopeMagnitudeStandarddeviation | numeric | Mean of standard deviation of magnitude of gyroscope value (calculated via Euclidean norm) of body, subject performing activity 
TimeBodyGyroscopeJerkMagnitudeMean | numeric | Mean of mean of magnitude of "jerk" gyroscope value (calculated via Euclidean norm) of body, subject performing activity
TimeBodyGyroscopeJerkMagnitudeStandarddeviation | numeric |  Mean of standard deviation of magnitude of "jerk" gyroscope value (calculated via Euclidean norm) of body, subject performing activity
FrequencyBodyAccelerometerMeanX | numeric | Mean of mean of frequency domain acceleration in X direction
FrequencyBodyAccelerometerMeanY | numeric | As above, in Y direction.
FrequencyBodyAccelerometerMeanZ | numeric | As above, in Z direction.
FrequencyBodyAccelerometerStandarddeviationX | numeric | Mean of standard deviation of frequency domain acceleration in X direction
FrequencyBodyAccelerometerStandarddeviationY | numeric | As above, in Y direction.
FrequencyBodyAccelerometerStandarddeviationZ | numeric | As above, in Z direction.
FrequencyBodyAccelerometerMeanFrequencyX | numeric | Mean of mean frequency acceleration in X direction 
FrequencyBodyAccelerometerMeanFrequencyY | numeric | As above, in Y direction.
FrequencyBodyAccelerometerMeanFrequencyZ | numeric | As above, in Z direction.
FrequencyBodyAccelerometerJerkMeanX | numeric | Mean of mean "jerk" acceleration in X direction
FrequencyBodyAccelerometerJerkMeanY | numeric | As above, in Y direction.
FrequencyBodyAccelerometerJerkMeanZ | numeric | As above, in Z direction.
FrequencyBodyAccelerometerJerkStandarddeviationX | numeric | Mean of standard deviation of "jerk" in X direction, frequency domain.
FrequencyBodyAccelerometerJerkStandarddeviationY | numeric | As above, in Y direction.
FrequencyBodyAccelerometerJerkStandarddeviationZ | numeric | As above, in Z direction.
FrequencyBodyAccelerometerJerkMeanFrequencyX | numeric | Mean of standard deviation of "jerk" frequency in X direction, frequency domain.
FrequencyBodyAccelerometerJerkMeanFrequencyY | numeric | As above, in Y direction. 
FrequencyBodyAccelerometerJerkMeanFrequencyZ | numeric | As above, in Z direction.
FrequencyBodyGyroscopeMeanX | numeric | Mean of mean frequency-domain gyroscope value in X direction
FrequencyBodyGyroscopeMeanY | numeric | As above, in Y direction.
FrequencyBodyGyroscopeMeanZ | numeric | As above, in Z direction.
FrequencyBodyGyroscopeStandarddeviationX | numeric | Mean of mean frequency-domain gyroscope standard deviation in X direction
FrequencyBodyGyroscopeStandarddeviationY | numeric | As above, in Y direction.
FrequencyBodyGyroscopeStandarddeviationZ | numeric | As above, in Z direction.
FrequencyBodyGyroscopeMeanFrequencyX | numeric | Mean of mean frequency-domain gyroscope frequency value in X direction
FrequencyBodyGyroscopeMeanFrequencyY | numeric | As above, in Y direction.
FrequencyBodyGyroscopeMeanFrequencyZ | numeric | As above, in Z direction.
FrequencyBodyAccelerometerMagnitudeMean | numeric | Mean of mean of frequency-domain value of accelerometer magnitude (this being calculated via Euclidean norm)
FrequencyBodyAccelerometerMagnitudeStandarddeviation | numeric |  Mean of mean of frequency-domain value of accelerometer standard deviation (this being calculated via Euclidean norm)
FrequencyBodyAccelerometerMagnitudeMeanFrequency | numeric | Mean of mean of frequency-domain value of accelerometer frequency
FrequencyBodyAccelerometerJerkMagnitudeMean | numeric | Mean of mean frequency-domain value of accelerometer jerk  magnitude 
FrequencyBodyAccelerometerJerkMagnitudeStandarddeviation | numeric | Mean of mean frequency-domain value of accelerometer jerk standard deviation
FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency | numeric | Mean of mean frequency-domain value of accelerometer jerk magnitude frequency
FrequencyBodyGyroscopeMagnitudeMean | numeric | Mean of mean frequency-domain value of gyroscope magnitude 
FrequencyBodyGyroscopeMagnitudeStandarddeviation | numeric |  Mean of mean frequency-domain value of gyroscope standard deviation
FrequencyBodyGyroscopeMagnitudeMeanFrequency | numeric | Mean of mean frequency-domain value of gyroscope mean frequency magnitude 
FrequencyBodyGyroscopeJerkMagnitudeMean | numeric |  Mean of mean frequency-domain value of gyroscope jerk magnitude 
FrequencyBodyGyroscopeJerkMagnitudeStandarddeviation | numeric | Mean of mean frequency-domain value of gyroscope jerk magnitude standard deviation
FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency | numeric | Mean of mean frequency-domain value of gyroscope jerk magnitude mean frequency
AngleTimeBodyAccelerometerMeanGravitY | numeric | Mean of angle between body acceleration and gravity, obtained by averaging in a signal window.
AngleTimeBodyAccelerometerJerkMeanGravityMean | numeric | Mean of angle between body "jerk"  and gravity, obtained by averaging in a signal window.
AngleTimeBodyGyroscopeMeanGravityMean | numeric | Mean of angle bewtwen body "mean" gyroscope value and gravity, obtained by averaging in a signal window.  
AngleTimeBodyGyroscopeJerkMeanGravityMean  | numeric | Mean of angle between  body "mean" gyroscope "jerk" value and  gravity, obtained by averaging in a signal window.  
AngleXGravityMean | numeric | Mean of mean angle between X vector and gravity,  obtained by averaging in a signal window.  
AngleYGravityMean | numeric | As above, in Y direction.
AngleZGravityMean | numeric | As above, in Z direction.
Activity | character | name of activity performed. Range is "walking", walkingupstairs", "walkingdownstairs", "sitting","standing", "laying"
Subject | integer | Variable containing ID of subject peforming activity. Range is 1 .. 30 inclusive.

-----
#Original features_info.txt
##Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

```tBodyAcc-XYZ
```tGravityAcc-XYZ
```tBodyAccJerk-XYZ
```tBodyGyro-XYZ
```tBodyGyroJerk-XYZ
```tBodyAccMag
```tGravityAccMag
```tBodyAccJerkMag
```tBodyGyroMag
```tBodyGyroJerkMag
```fBodyAcc-XYZ
```fBodyAccJerk-XYZ
```fBodyGyro-XYZ
```fBodyAccMag
```fBodyAccJerkMag
```fBodyGyroMag
```fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


#original readme.txt
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
