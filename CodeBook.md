#Codebook for The code book

This description borrows heavily from the  "features_info.txt" file in the original dataset.

The variables in the dataset represent the mean value of each variable type described below.
The mean value is the mean of the "mean" and "standard deviation" columns extracted from the original dataset.

The original dataset (ie not this tidy dataset) values were obtained from:

1. Accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
 
2. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

3. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

4. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

In the tidy dataset, time-domain signal names start with "Time" and frequency domain signals start with "Frequency".

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
	
#Variables
Where variables represent one ordinate of an X-Y-Z triple, only the X variable is described.

Variable name | Type | Purpose
------------- | ----- | ----
TimeBodyAccelerometerMeanX | Time domain | Mean of mean accelerometer values in X direction of subject performing activity.
TimeBodyAccelerometerMeanY | | As above, in Y direction.
TimeBodyAccelerometerMeanZ | | As above, in Z direction.
TimeBodyAccelerometerStandarddeviationX | | Mean of mean accelerometer standard deviation values in X direction of subject performing activity.
TimeBodyAccelerometerStandarddeviationY | |
TimeBodyAccelerometerStandarddeviationZ | |
TimeGravityAccelerometerMeanX | | Mean of mean accelerometer values due to gravity of subject performing activity.
TimeGravityAccelerometerMeanY | |
TimeGravityAccelerometerMeanZ | |
TimeGravityAccelerometerStandarddeviationX | Mean of standard deviation of acceleration due to gravity of subject performing activity | 
TimeGravityAccelerometerStandarddeviationY | |
TimeGravityAccelerometerStandarddeviationZ | |
TimeBodyAccelerometerJerkMeanX | | Mean of "jerk" (ie instantaneous acceleration along a different vector) in X direction of subject performing activity.
TimeBodyAccelerometerJerkMeanY | |
TimeBodyAccelerometerJerkMeanZ | |
TimeBodyAccelerometerJerkStandarddeviationX | | Mean of "jerk" (ie instantaneous acceleration along a different vector) in X direction of subject performing activity.
TimeBodyAccelerometerJerkStandarddeviationY | | 
TimeBodyAccelerometerJerkStandarddeviationZ | |
TimeBodyGyroscopeMeanX | |
TimeBodyGyroscopeMeanY | |
TimeBodyGyroscopeMeanZ | |
TimeBodyGyroscopeStandarddeviationX | |
TimeBodyGyroscopeStandarddeviationY | |
TimeBodyGyroscopeStandarddeviationZ | |
TimeBodyGyroscopeJerkMeanX | |
TimeBodyGyroscopeJerkMeanY | |
TimeBodyGyroscopeJerkMeanZ | |
TimeBodyGyroscopeJerkStandarddeviationX | |
TimeBodyGyroscopeJerkStandarddeviationY | |
TimeBodyGyroscopeJerkStandarddeviationZ | |
TimeBodyAccelerometerMagnitudeMean | |
TimeBodyAccelerometerMagnitudeStandarddeviation | |
TimeGravityAccelerometerMagnitudeMean | |
TimeGravityAccelerometerMagnitudeStandardeviation | |
TimeBodyAccelerometerJerkMagnitudeMean | |
TimeBodyAccelerometerJerkMagnitudeStandarddeviation | | 
TimeBodyGyroscopeMagnitudeMean | |
TimeBodyGyroscopeMagnitudeStandarddeviation | | 
TimeBodyGyroscopeJerkMagnitudeMean | |
TimeBodyGyroscopeJerkMagnitudeStandarddevition | | 
FrequencyBodyAccelerometerMeanX | |
FrequencyBodyAccelerometerMeanY | |
FrequencyBodyAccelerometerMeanZ | |
FrequencyBodyAccelerometerStandarddeviationX | |
FrequencyBodyAccelerometerStandarddeviationY | |
FrequencyBodyAccelerometerStandarddeviationZ | |
FrequencyBodyAccelerometerMeanFrequencyX | |
FrequencyBodyAccelerometerMeanFrequencyY | |
FrequencyBodyAccelerometerMeanFrequencyZ | |
FrequencyBodyAccelerometerJerkMeanX | |
FrequencyBodyAccelerometerJerkMeanY | |
FrequencyBodyAccelerometerJerkMeanZ | |
FrequencyBodyAccelerometerJerkStandarddeviationX | |
FrequencyBodyAccelerometerJerkStandarddeviationY | |
FrequencyBodyAccelerometerJerkStandarddeviationZ | |
FrequencyBodyAccelerometerJerkMeanFrequencyX | | 
FrequencyBodyAccelerometerJerkMeanFrequencyY | | 
FrequencyBodyAccelerometerJerkMeanFrequencyZ | |
FrequencyBodyGyroscopeMeanX | |
FrequencyBodyGyroscopeMeanY | |
FrequencyBodyGyroscopeMeanZ | |
FrequencyBodyGyroscopeStandarddeviationX | |
FrequencyBodyGyroscopeStandarddeviationY | |
FrequencyBodyGyroscopeStandarddeviationZ | |
FrequencyBodyGyroscopeMeanFrequencyX | |
FrequencyBodyGyroscopeMeanFrequencyY | |
FrequencyBodyGyroscopeMeanFrequencyZ | |
FrequencyBodyAccelerometerMagnitudeMean | |
FrequencyBodyAccelerometerMagnitudeStandarddeviation | | 
FrequencyBodyAccelerometerMagnitudeMeanFrequency | |
FrequencyBodyBodyAccelerometerJerkMagnitudeMean | |
FrequencyBodyBodyAccelerometerJerkMagnitudeStandarddeviation | | 
FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFrequency | |
FrequencyBodyBodyGyroscopeMagnitudeMean | |
FrequencyBodyBodyGyroscopeMagnitudeStandarddeviation | | 
FrequencyBodyBodyGyroscopeMagnitudeMeanFrequency | |
FrequencyBodyBodyGyroscopeJerkMagnitudeMean | |
FrequencyBodyBodyGyroscopeJerkMagnitudeStandarddeviation | |
FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFrequency | |
AngleTimeBodyAccelerometerMeanGravitY | |
AngleTimeBodyAccelerometerJerkMeanGravityMean | |
AngleTimeBodyGyroscopeMeanGravityMean | |
AngleTimeBodyGyroscopeJerkMeanGravityMean  | |
AngleXGravityMean | |
AngleYGravityMean | |
AngleZGravityMean | |
Activity | |
Subject | |

	

 