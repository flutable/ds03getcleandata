#Codebook 
This description borrows heavily from the "features_info.txt" file in the original UCI HAR dataset.

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
TimeBodyAccelerometerStandarddeviationY | numeric |
TimeBodyAccelerometerStandarddeviationZ | numeric |
TimeGravityAccelerometerMeanX | numeric | Mean of mean accelerometer values due to gravity of subject performing activity.
TimeGravityAccelerometerMeanY | numeric |
TimeGravityAccelerometerMeanZ | numeric |
TimeGravityAccelerometerStandarddeviationX | numeric | Mean of standard deviation of acceleration due to gravity of subject performing activity | 
TimeGravityAccelerometerStandarddeviationY | numeric |
TimeGravityAccelerometerStandarddeviationZ | numeric |
TimeBodyAccelerometerJerkMeanX | numeric | Mean of "jerk" (ie instantaneous acceleration along a different vector) in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyAccelerometerJerkMeanY | numeric |
TimeBodyAccelerometerJerkMeanZ | numeric |
TimeBodyAccelerometerJerkStandarddeviationX | numeric | Mean of standard deviation of "jerk" (ie instantaneous acceleration along a different vector) in X direction of subject performing activity.
TimeBodyAccelerometerJerkStandarddeviationY | numeric | 
TimeBodyAccelerometerJerkStandarddeviationZ | numeric |
TimeBodyGyroscopeMeanX | numeric | Mean of mean gyroscope value in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyGyroscopeMeanY | numeric |
TimeBodyGyroscopeMeanZ | numeric |
TimeBodyGyroscopeStandarddeviationX | numeric | Mean of standard deviation of gyroscope value in X direction of subject performing activity
TimeBodyGyroscopeStandarddeviationY | numeric |
TimeBodyGyroscopeStandarddeviationZ | numeric |
TimeBodyGyroscopeJerkMeanX | numeric | Mean of mean "jerk" in X direction of subject performing activity. Obtained by averaging in a signal window.
TimeBodyGyroscopeJerkMeanY | numeric |
TimeBodyGyroscopeJerkMeanZ | numeric |
TimeBodyGyroscopeJerkStandarddeviationX | numeric | Mean of standard deviation of "jerk" in X direction of subject performing activity.
TimeBodyGyroscopeJerkStandarddeviationY | numeric |
TimeBodyGyroscopeJerkStandarddeviationZ | numeric |
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
FrequencyBodyAccelerometerMeanY | numeric | 
FrequencyBodyAccelerometerMeanZ | numeric |
FrequencyBodyAccelerometerStandarddeviationX | numeric | Mean of standard deviation of frequency domain acceleration in X direction
FrequencyBodyAccelerometerStandarddeviationY | numeric |
FrequencyBodyAccelerometerStandarddeviationZ | numeric |
FrequencyBodyAccelerometerMeanFrequencyX | numeric | Mean of mean frequency acceleration in X direction 
FrequencyBodyAccelerometerMeanFrequencyY | numeric |
FrequencyBodyAccelerometerMeanFrequencyZ | numeric |
FrequencyBodyAccelerometerJerkMeanX | numeric | Mean of mean "jerk" acceleration in X direction
FrequencyBodyAccelerometerJerkMeanY | numeric |
FrequencyBodyAccelerometerJerkMeanZ | numeric |
FrequencyBodyAccelerometerJerkStandarddeviationX | numeric | Mean of standard deviation of "jerk" in X direction, frequency domain.
FrequencyBodyAccelerometerJerkStandarddeviationY | numeric |
FrequencyBodyAccelerometerJerkStandarddeviationZ | numeric |
FrequencyBodyAccelerometerJerkMeanFrequencyX | numeric | Mean of standard deviation of "jerk" frequency in X direction, frequency domain.
FrequencyBodyAccelerometerJerkMeanFrequencyY | numeric | 
FrequencyBodyAccelerometerJerkMeanFrequencyZ | numeric |
FrequencyBodyGyroscopeMeanX | numeric | Mean of mean frequency-domain gyroscope value in X direction
FrequencyBodyGyroscopeMeanY | numeric |
FrequencyBodyGyroscopeMeanZ | numeric |
FrequencyBodyGyroscopeStandarddeviationX | numeric |  Mean of mean frequency-domain gyroscope standard deviation in X direction
FrequencyBodyGyroscopeStandarddeviationY | numeric |
FrequencyBodyGyroscopeStandarddeviationZ | numeric |
FrequencyBodyGyroscopeMeanFrequencyX | numeric | Mean of mean frequency-domain gyroscope frequency value in X direction
FrequencyBodyGyroscopeMeanFrequencyY | numeric |
FrequencyBodyGyroscopeMeanFrequencyZ | numeric |
FrequencyBodyAccelerometerMagnitudeMean | numeric | Mean of mean of frequency-domain value of accelerometer magnitude (this being calculated via Euclidean norm)
FrequencyBodyAccelerometerMagnitudeStandarddeviation | numeric |  Mean of mean of frequency-domain value of accelerometer standard deviation (this being calculated via Euclidean norm)
FrequencyBodyAccelerometerMagnitudeMeanFrequency | numeric | Mean of mean of frequency-domain value of accelerometer frequency
FrequencyBodyBodyAccelerometerJerkMagnitudeMean | numeric | Mean of mean frequency-domain value of accelerometer jerk  magnitude 
FrequencyBodyBodyAccelerometerJerkMagnitudeStandarddeviation | numeric | Mean of mean frequency-domain value of accelerometer jerk standard deviation
FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFrequency | numeric | Mean of mean frequency-domain value of accelerometer jerk magnitude frequency
FrequencyBodyBodyGyroscopeMagnitudeMean | numeric | Mean of mean frequency-domain value of gyroscope magnitude 
FrequencyBodyBodyGyroscopeMagnitudeStandarddeviation | numeric |  Mean of mean frequency-domain value of gyroscope standard deviation
FrequencyBodyBodyGyroscopeMagnitudeMeanFrequency | numeric | Mean of mean frequency-domain value of gyroscope mean frequency magnitude 
FrequencyBodyBodyGyroscopeJerkMagnitudeMean | numeric |  Mean of mean frequency-domain value of gyroscope jerk magnitude 
FrequencyBodyBodyGyroscopeJerkMagnitudeStandarddeviation | numeric | Mean of mean frequency-domain value of gyroscope jerk magnitude standard deviation
FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFrequency | numeric | Mean of mean frequency-domain value of gyroscope jerk magnitude mean frequency
AngleTimeBodyAccelerometerMeanGravitY | numeric | Mean of angle between body acceleration and gravity, obtained by averaging in a signal window.
AngleTimeBodyAccelerometerJerkMeanGravityMean | numeric | Mean of angle between body "jerk"  and gravity, obtained by averaging in a signal window.
AngleTimeBodyGyroscopeMeanGravityMean | numeric | Mean of angle bewtwen body "mean" gyroscope value and gravity, obtained by averaging in a signal window.  
AngleTimeBodyGyroscopeJerkMeanGravityMean  | numeric | Mean of angle between  body "mean" gyroscope "jerk" value and  gravity, obtained by averaging in a signal window.  
AngleXGravityMean | numeric | Mean of mean angle between X vector and gravity,  obtained by averaging in a signal window.  
AngleYGravityMean | numeric |
AngleZGravityMean | numeric |
Activity | character | name of activity performed. Range is "walking", walkingupstairs", "walkingdownstairs", "sitting","standing", "laying"
Subject | integer | Variable containing ID of subject peforming activity. Range is 1 .. 30 inclusive.