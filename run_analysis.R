##Read Training data
train_data <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt",sep="",header=FALSE)

##Read Test data
test_data <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt",sep="",header=FALSE)

##Read the subjects of the Training data
train_subjects <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt",sep="",header=FALSE)

##Read the subjects of the Test data
test_subjects <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt",sep="",header=FALSE)

##Read the activity id's of the training data
train_activityId <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt",sep="",header=FALSE)

##Read the activity id's of the test data
test_activityId <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt",sep="",header=FALSE)

##Read the features of the data(implies to both train and test)
features <- read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\features.txt",sep="",header=FALSE)

##Read the activity labels
activityLabels = read.table("C:\\Users\\Sriram\\Documents\\RData\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\activity_labels.txt",sep="",header=FALSE)

##Use the imported features to write the headings for the training data
names(train_data)<-features[,2]

##Use the imported features to write the headings for the test data
names(test_data)<-features[,2]

##Add the heading 'Subjects' for the training subject data
names(train_subjects) <- c('Subjects')

##Add the heading 'Subjects' for the test subject data
names(test_subjects)<-c('Subjects')

##Add the heading 'ActivityId' for the training activityId data
names(train_activityId) <- c('ActivityId')

##Add the heading 'ActivityId' for the test activityId data
names(test_activityId) <- c('ActivityId')

##Add the heading 'ActId' and 'ActName' for the activityLabels
names(activityLabels) <- c('ActId','ActName')

##Merge the Training subjects, their activity id's and the training data
train <- cbind(train_subjects,train_activityId,train_data)

##Merge the Test subjects, their activity id's and the test data
test <- cbind(test_subjects,test_activityId,test_data)

##Merge the above merged data to create a single dataset for both training and test
ipdata <- rbind(train,test)

##Extract the field names from the features dataset, that match with mean() and std()
fields <- features[grep("mean[:():]|std[:():]",features$V2),]

##Extract the data of the above extracted field names from the merged dataset
intdata <- ipdata[,c(1,2,fields[,1]+2)]

##Merge the Activity Labels to the Activity Id and store it in another variable
intdata <- merge(intdata,activityLabels,by.x='ActivityId',by.y='ActId')

##Re-order the columns to form an order Subjects, Activity Id, Activity Name and the extracted fields
intdata <- intdata[,c(2,1,69,3:68)]

##Providing a descriptive name for each of the extracted fields
fields$V3 <- fields$V2
fields$V3 <- gsub('^t','TimeDomain_',fields$V3)
fields$V3 <- gsub('^f','FrequencyDomain_',fields$V3)
fields$V3 <- gsub('Body','Body_',fields$V3)
fields$V3 <- gsub('Gyro','Gyro_',fields$V3)
fields$V3 <- gsub('Jerk','Jerk_',fields$V3)
fields$V3 <- gsub('Acc','Accelerometer_',fields$V3)
fields$V3 <- gsub('Mag','Magnitude_',fields$V3)
fields$V3 <- gsub('-mean[:(:][:):]','Mean',fields$V3)
fields$V3 <- gsub('-std[:(:][:):]','StdDeviation',fields$V3)
names(intdata) <- c('Subjects','ActivityId','ActName',fields$V3)

##Order the data based on Subjects and ActivityId
ord_data<-intdata[order(intdata$Subjects,intdata$ActivityId),]

##Create a dummy data frame for the tidy dataset
tidy <-data.frame()

##Loop through the above ordered dataset and extract the average of each of the column
##based on each subject and each activity and store it in the tidy dataframe
for (i in 1:30)
{
  temp0 <- ord_data[ord_data[,1]==i,]
  temp1<-matrix(,6,)
  temp1[,1] <- i
  temp1 <- cbind(temp1,activityLabels)
  for (j in 4:69)
  {
    mean_calc <- tapply(temp0[,j],temp0[,2],mean)
    temp1 <- cbind(temp1,mean_calc)
  }
  tidy<- rbind(tidy,temp1)
}

##Provide a name/heading for each of the columns  	
names(tidy) <- c('Subjects','ActivityId','ActivityName',fields$V3)

##Write the tidy dataframe out to a text file using write.table() and row.name=FALSE
write.table(tidy,file="C:\\Users\\Sriram\\Documents\\RData\\tidy.txt",row.name=FALSE)
