#Quick start 
## How to run the analysis

1. If the "root" or uppermost folder is different on your computer, change the working folder AND the value of the *fldProjectroot* variable in the *run_analysis.R* file.

2. To run the analysis, set the working folder as follows:

		setwd("C:\\Users\\nick\\Documents\\Coursera\\DS03 Getting & cleaning data\\DS03GetCleanDataGit")
3. Then,

		source("run_analysis.R")


## How to read the tidy data
See the "optional code" section at the bottom of the *run_analysis.R* file.

## Tidy data format and values
Please see the accompanying codebook, CodeBook.md

#Source/Original/Raw data layout
The original folder hierarchy, extracted from *getdata_projectfiles_UCI HAR Dataset.zip* is listed below, along with the variables used to hold folder names in the *run_analysis.R* file. DS03getcleandataGit is the root, or uppermost, folder on my/your local disk.

										Folder variables
		DS03getcleandataGit				fldProjectroot
 			UCI HAR Dataset				fldDataroot
    			test					fldTestdata
	       			Inertial signals
    			train					fldTraindata
	       			Inertial signals
	   
 
##Original data 
The original data were provided as follows (from the original dataset)

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

#Processing
As per the original dataset README.txt, the dataset was originally arbitrarily partitioned into training and test data, so there is no procedural reason against merging the data. The data were processed as follows:

1. Read test x/y, training x/y, and subject test/train files.
2. Convert test x/y activity codes into meaningful activity names, eg '1' changed to 'walking', '2' to 'walkingupstairs', etc.
3. Add the test/train activity name and test/train subject ID columns to the test and training data frames respectively.
4. Append the test data to the training date, thereby merging the datasets.
5. Reading the feature names  from "features.txt" and performing text processing to clean up the feature names as follows:
* removing the characters `- ( ) "   , .` and adding the meaningful column names "Activity" and "Subject" 
* renaming the columns of the combined data
6. From the combined data, create a new dataset ("meanstddata") by extract only the columns of interest, defined as any column with the strings "mean" or "std" (and "subject"/"activity") in the name. All other columns
are discarded.
7. Transform the names of the columns of interest to "meaningful" names using further text processing as follows:
* changing capitalisation to "CamelCase" to make reading the variable names easier
* capitalising ordinate names (x to X, y to Y, Z to Z) to make reading easier
8. Grouping the data by activity, then subject, then taking the means of the grouped data.
9. Saving the data to a file, "tidydata.txt".

The output file, "tidydata.txt" is tidy as per the following principles:
- each column contains one variable.
- each row contains a single, summarised observation of each of the "mean" and "standard deviation" observations.
- the tidydata.txt file contains one kind of observation (spatial movement during various activities)
- variable names are descriptive, not duplicated, and contain only alphanumeric characters
- variable names are long, and therefore are capitalised using [CamelCase](http://en.wikipedia.org/wiki/CamelCase "CamelCase") in order to make them more readable.
- Reference: [Hadley's Tidy Data paper](http://vita.had.co.nz/papers/tidy-data.pdf)

#Optional code
This section, at the end of the *run_analysis.R* file, shows
* how to read in the new, tidy dataset.
* how to compare the saved data with the tidy dataset generated by the *run_analysis.R* script.