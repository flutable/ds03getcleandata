# Tidy datasets
	1. Each variable forms a column 
	2. Each observation forms a row
	3. Each table/file stores data about one kind of observation (e.g. people/hospitals). 
# Tidy dataset variables
#	Names of variables should be 
#	○ All lower case when possible 
#	○ Descriptive (Diagnosis versus Dx) 
#	○ Not duplicated 
#	○ Not have underscores or dots or white spaces 
# Variables with character values 
#   ○ Should usually be made into factor variables (depends on application) 
#	○ Should be descriptive (use TRUE/FALSE instead of 0/1 and Male/Female versus 0/1 or M/F) 


#Merge training & test data
#Group by measurement
#Extract mean, std dev for each measurement by group
#Add descriptive activity names for activities in dataset      names(mydataframe) <- vector of names 
#Label dataset with decriptive names
#Create a 2nd tidy dataset with the mean of each variable for 
#  each activity
#  each subject


# [ ] tidy dataset
# [ ] tidy dataset mean
# [ ] link to github repo with script for activity
# [ ] Create codebook CodeBook.md describing variables, data, any transformations required for cleanup.
# [ ] README.md describing github layout.
^^^^^^^remove above.
#Quick start
##How to run the analysis
1. To run the analysis, set the working folder as follows:

setwd("C:\\Users\\nick\\Documents\\Coursera\\DS03 Getting & cleaning data\\DS03GetCleanDataGit")
2. Then, source("run_analysis.R")

3. If the "root" or uppermost folder is different on your computer, change the working folder AND the value of the fldProjectroot"
variable in the run_analysis.R file.
##How to read the tidy data
See the "optional code" section at the bottom of the *run_analysis.R* file.

#Source/original/Raw data
## Original data folder hierarchy	folder variables
project								fldProjectroot
 UCI HAR Dataset					fldDataroot
    test							fldTestdata
       Inertial signals
    train							fldTraindata
       Inertial signals
	   
 
##Original data 
The original data were provided as follows (from original dataset)
#
#- 'features_info.txt': Shows information about the variables used on the feature vector.
#- 'features.txt': List of all features.
#- 'activity_labels.txt': Links the class labels with their activity name.
#- 'train/X_train.txt': Training set.
#- 'train/y_train.txt': Training labels.
#- 'test/X_test.txt': Test set.
#- 'test/y_test.txt': Test labels.

#Processing
As per the original dataset README.txt, the dataset was originally partitioned into training and test data, so there is
no procedural reason against merging the data. The data were processed as follows:
1. Read test x/y, training x/y, and subject test/train files
2. Convert test x/y activity codes into meaningful activity names, eg '1' changed to 'walking', '2' to 'walkingupstairs', etc
3. Add the test/train activity names and test/train subject ID columns to the test and training data respectively
4. append the test data to the training date, thereby merging the datasets
5. Reading the feature names and performing text processing to clean up the feature names as follows:
  * removing the characters - ( ) " , . and adding the meaningful column names "Activity" and "Subject"
  * renaming the columns of the combined data
6. From the combined data, extract columns of interest, defined as any column with the strings "mean" or "std" in the name.
7. Transform the names of the columns of interest to "meaningful" names using further text processing as follows:
  * changing capitalisation to "CamelCase" to make reading the variable names easier
  * capitalising ordinate names (x to X, y to Y, Z to Z) to make reading easier
8 Grouping the data by activity, then subject, then 
