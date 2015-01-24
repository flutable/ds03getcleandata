library(plyr)
library(dplyr)
library(stringr)

# clear environment
rm(list=ls())

# Set up handles to folders
# **If these folders are different on your system, edit the variables below**
fldProjectroot <- ".\\" #"C:\\Users\\nick\\Documents\\Coursera\\DS03 Getting & cleaning data\\DS03GetCleanDataGit"
fldDataset     <- paste0(fldProjectroot, "\\UCI HAR Dataset")
fldTestdata    <- paste0(fldProjectroot, "\\UCI HAR Dataset\\test")
fldTraindata   <- paste0(fldProjectroot, "\\UCI HAR Dataset\\train")

 message("Reading test data...")
 testx <- read.table(paste0(fldTestdata,"\\X_test.txt"))
 testy <- read.table(paste0(fldTestdata,"\\Y_test.txt"))
 subjecttest <- read.table(paste0(fldTestdata,"\\subject_test.txt"))
 message("Reading training data...")
 trainx <- read.table(paste0(fldTraindata,"\\X_train.txt"))
 trainy <- read.table(paste0(fldTraindata,"\\Y_train.txt"))
 subjecttrain <- read.table(paste0(fldTraindata,"\\subject_train.txt"))
 
#add activity labels 
# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING
# #TODO factor this out into a function. 
message("adding activity labels to test data")
names(testy) <- "activitynum" # so we know for sure what the variable is called. defaults to V1
#"conditional mutate": replace if match, else leave as previous value. 
testyactnames <- mutate(testy,         activitynum=ifelse(activitynum==1, "walking",activitynum))           
testyactnames <- mutate(testyactnames, activitynum=ifelse(activitynum==2, "walkingupstairs",activitynum))
testyactnames <- mutate(testyactnames, activitynum=ifelse(activitynum==3, "walkingdownstairs",activitynum))
testyactnames <- mutate(testyactnames, activitynum=ifelse(activitynum==4, "sitting",activitynum))
testyactnames <- mutate(testyactnames, activitynum=ifelse(activitynum==5, "standing",activitynum))
testyactnames <- mutate(testyactnames, activitynum=ifelse(activitynum==6, "laying",activitynum))

message("adding activity labels to training data")
names(trainy) <- "activitynum" 
trainyactnames <- mutate(trainy,         activitynum=ifelse(activitynum==1, "walking",activitynum))
trainyactnames <- mutate(trainyactnames, activitynum=ifelse(activitynum==2, "walkingupstairs",activitynum))
trainyactnames <- mutate(trainyactnames, activitynum=ifelse(activitynum==3, "walkingdownstairs",activitynum))
trainyactnames <- mutate(trainyactnames, activitynum=ifelse(activitynum==4, "sitting",activitynum))
trainyactnames <- mutate(trainyactnames, activitynum=ifelse(activitynum==5, "standing",activitynum))
trainyactnames <- mutate(trainyactnames, activitynum=ifelse(activitynum==6, "laying",activitynum)) 
 
#Add subject & activity label columns
# format is now 561 observations + activity + subject, so activities are in col 562 and subject is in col 563
testx2  <- cbind(testx,testyactnames,subjecttest)
trainx2 <- cbind(trainx,trainyactnames,subjecttrain)

# PART 1 of project requirement.
#Append test dataset to the end of training dataset
combined <- rbind(trainx2,testx2)


#Get feature names
 message("reading feature labels")
# Creates a dataframe with index in col 1, feature name in col 2. Set stringsAsFactors = FALSE; they are
# names, not factors.
rawfeatures <- read.delim(paste0(fldDataset,"\\features.txt"),sep=" ",header=FALSE,stringsAsFactors =FALSE)

#  remove index column 1; converts data frame to a character vector.
rawfeatures <- rawfeatures[ ,2]
#Clean up variable names
#  1. convert all to lower case
rawfeatures <- tolower(rawfeatures)

#  2. remove non-standard characters from the name:   - ( ) " , .
#     each character is escaped by a \\
#     ideally, this would be a function where we could pass in a list of "bad" characters to remove
cleanfeatures <- gsub('\\-|\\(|\\)|\\,|\\"|\\.', "", rawfeatures, perl=TRUE, ignore.case=TRUE)
allfeatures <- c(cleanfeatures, "Activity", "Subject")

#  3. rename all columns in combined datasets
names(combined) <- allfeatures

#remove previous variables to save memory if necessary
#rm(testx);rem(testy);rm(subjecttest);rm(subjecttrain);rm(testyactnames);rm(trainyactnames);rm(testx2);rm(trainx2)

#Extract all the measurements dealing with mean and standard deviation
#  By this I assume any variable with the strings "mean" and "std" are valid.

# 4 create an index vector of columns containing "mean" and "std", as well as "activity" and "subject", case insensitive
meanstdcolumns <- grepl("mean|std|activity|subject", allfeatures, perl=TRUE, ignore.case=TRUE);

# PART 2 of project requirement
# 5 create a new dataset with just the "mean" and "standard deviation" columns (and subject & activity)
meanstddata <- combined[ ,meanstdcolumns]

# 6 extract the names
notdescriptive <- names(meanstddata)

# PART 3 of the project requirement
# 7 Transform the existing names into "descriptive names"
#   I consider CamelCase/Pascal Case variable names "descriptive", as the capital letters denote the start
#   of a new section of the name. Everything can be converted "tolower()" via subsequent processing if required.
descriptivenames <- gsub("tBody",   "TimeBody",         notdescriptive, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("Acc",     "Accelerometer",    descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("gyro",    "Gyroscope",        descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("mag",     "Magnitude",        descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("fBody",   "FrequencyBody",    descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("tGravity", "TimeGravity",     descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("std",     "Standarddeviation",descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("mean",    "Mean",             descriptivenames, perl=TRUE, ignore.case=FALSE)
descriptivenames <- gsub("jerk",    "Jerk",             descriptivenames, perl=TRUE, ignore.case=FALSE)
descriptivenames <- gsub("body",    "Body",             descriptivenames, perl=TRUE, ignore.case=FALSE)
descriptivenames <- gsub("gravity", "Gravity",          descriptivenames, perl=TRUE, ignore.case=FALSE)
descriptivenames <- gsub("BodyBody","Body",             descriptivenames, perl=TRUE, ignore.case=FALSE)  #fixes a mistake in the original names.

#freq([x-z])\\z
#  Match the character string “freq” literally (case insensitive)
#  Match the regex 'single character in the range between 'x' and 'z' (case insensitive) and capture its match into
#  backreference number \1
#  ...all at the end of the string \\z     #the first \ is an escape character
#Frequency\1
#  Insert the character string “Frequency” literally
#  Insert the text that was last matched by capturing group number \1
descriptivenames <- gsub("freq([x-z])\\z", "Frequency\\1", descriptivenames, perl=TRUE, ignore.case=TRUE)

# find x,y,z at the end of a string, convert back to uppercase, as they are coordinates.
#   the \\U converts to uppercase, the \\1 is the back reference to the found text, and \\E stops converting to uppercase
descriptivenames <- gsub("([x-z])\\z", "\\U\\1\\E", descriptivenames, perl=TRUE, ignore.case=TRUE)

# find angle[x-z], convert to Angle[X-Z]
descriptivenames <- gsub("angle([x-z])", "Angle\\U\\1\\E", descriptivenames, perl=TRUE, ignore.case=TRUE)
descriptivenames <- gsub("angle", "Angle",descriptivenames, perl=TRUE, ignore.case=FALSE)

# find 'freq' at the end of a line, insert 'Frequency'
descriptivenames <- gsub("freq\\z", "Frequency", descriptivenames, perl=TRUE, ignore.case=TRUE)
#finally ensure subject & activity are capitalised
descriptivenames <- gsub("subject", "Subject", descriptivenames, perl=TRUE, ignore.case=FALSE)
descriptivenames <- gsub("activity", "Activity", descriptivenames, perl=TRUE, ignore.case=TRUE)

#PART 4 of the project requirement
#rename the combined mean & standard deviation data with descriptive names
names(meanstddata) <- descriptivenames

#PART 5
# Create & save the now-tidied dataset.
#order by activity, then subject
# create a dplyr data frame table (I think dplyr does this by default, but....making sure.
labelleddata <- tbl_df(meanstddata)
#group the data, summarize each column
summariseddata <- labelleddata %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))

#save data
datafile <- file("tidydata.txt","w")
write.table(summariseddata,file=datafile,sep=",",row.names=FALSE)
close(datafile)


# Optional code
# 1. Write the descriptive names to a file
#   desc <- file("descriptivenames.txt","w")
#   writeLines(descriptivenames, desc)
#   close(desc)

#2. How to read the tidy data 
#   Read the file, ignore factors, convert to dplyr-compatible data frame
#    tidyd <- tbl_df(read.csv("tidydata.txt",header=TRUE,stringsAsFactors =FALSE))
#    test against existing data
#    identical(tidyd,labelleddata)   #should be TRUE
#End of file
