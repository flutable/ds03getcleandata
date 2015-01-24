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
#Source/original/Raw data
# Original data folder hierarchy	folder variables
project								fldProjectroot
 UCI HAR Dataset					fldDataroot
    test							fldTestdata
       Inertial signals
    train							fldTraindata
       Inertial signals
	   
 
Original data provided as follows (from original 
#
#- 'features_info.txt': Shows information about the variables used on the feature vector.
#- 'features.txt': List of all features.
#- 'activity_labels.txt': Links the class labels with their activity name.
#- 'train/X_train.txt': Training set.
#- 'train/y_train.txt': Training labels.
#- 'test/X_test.txt': Test set.
#- 'test/y_test.txt': Test labels.

# The following files are available for the train and test data. Their descriptions are equivalent. 
#- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
Processing
1. Dimensions of datasets:
train/X_train.txt'      : 7352rows x 561 cols.
train/y_train.txt'      : 7352 x 1
train/subject_train.txt : 7352 x 1
test/X_test.txt'        : 2947 x 561
test/y_test.txt'        : 2947 x 1
test/subject_test.txt   : 2947 x 1
2. Merge as follows:
As per the original dataset README.txt, the dataset was originally partitioned into training and test data, so there is
no procedural reason against merging the data.
