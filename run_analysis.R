#1.Merges the training and the test sets to create one data set.

#Read train data 
x_train = read.table("train/X_train.txt")
y_train = read.table("train/Y_train.txt")
subject_train = read.table("train/subject_train.txt")

#Read test data
x_test = read.table("test/X_test.txt")
y_test = read.table("test/Y_test.txt")
subject_test = read.table("test/subject_test.txt")

#Create data sets on each variable
x_dt = rbind(x_train,x_test)
y_dt = rbind(y_train,y_test)
subject_dt = rbind(subject_train,subject_test)

#2.Extracts only the measurements on the mean and standard deviation for each measurement

#Read list of features
features = read.table("features.txt")

#Search through the list of features to find those with "mean" or "std". Output is logical vector
l = grepl(pattern = "(mean+\\(\\)|std+\\(\\))", features[,2])


#Subsetting x_dt by logical vector to recieve measurement only with "mean" or "std" 
x_data = x_dt[,l]
names(x_data) = features[l,2]

#3.Uses descriptive activity names to name the activities in the data set

#Read activity list
activities = read.table("activity_labels.txt")
y_data = y_dt

#Replace the number of activity by its name
y_data[,1] = activities[y_dt[,1],2]
names(y_data) = "activities"

#4.Appropriately labels the data set with descriptive variable names

#Create combined data sets of all variables
names(subject_dt) = "subject"
data = cbind(subject_dt, x_data, y_data)

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Create melt data and then aggregate them my mean

mdata = melt(data, id.vars = c("subject","activities"))
output_data = dcast(mdata, subject+activities ~ variable, mean)
write.table(output_data, "tidy_data.txt", row.name=FALSE)