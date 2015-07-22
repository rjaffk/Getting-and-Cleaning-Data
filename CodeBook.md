#CodeBook

##Variables
* <code>x_train</code>, <code>y_train</code>, <code>subject_train</code>, <code>x_test</code>, <code>y_test</code>, <code>subject_test</code> - data from downloaded files.
* <code>x_dt</code>, <code>y_dt</code>, <code>subject_dt</code> - data from merging testing and trainind datasets.
* <code>features</code> - names for x_dt.
* <code>l</code> - logical vector that indicates x-names that have "mean" or "std" in.
* <code>x_data</code> - transformation of x_dt by adding column name.
* <code>activities</code> - names for y_dt.
* <code>y_data</code> - transformation of y_dt by replacement the number of activity by its name.
* <code>data</code> - mergins of x_data, y_data and subject_dt.
* <code>mdata</code> - melting data obtained from data.
* <code>output_data</code> - tidy data set with the average of each variable for each activity and each subject.

##Data
The resulting data consists of 180 observations and 68 variables.

**Variables**

* <code>"subject"</code> - test subject id
* <code>"activities"</code> - type of activity performing during the measurement
_measurements_
* <code>"tBodyAcc-mean()-X"</code>
* <code>"tBodyAcc-mean()-Y"</code>
* <code>"tBodyAcc-mean()-Z"</code>
* <code>"tBodyAcc-std()-X"</code>
* <code>"tBodyAcc-std()-Y" </code>
* <code>"tBodyAcc-std()-Z"</code>
* <code>"tGravityAcc-mean()-X" </code>
* <code>"tGravityAcc-mean()-Y"  </code> 
* <code>"tGravityAcc-mean()-Z" </code> 
* <code>"tGravityAcc-std()-X" </code> 
* <code>"tGravityAcc-std()-Y"</code>
* <code>"tGravityAcc-std()-Z" </code>  
* <code>"tBodyAccJerk-mean()-X" </code>
* <code>"tBodyAccJerk-mean()-Y" </code>
* <code>"tBodyAccJerk-mean()-Z" </code>
* <code>"tBodyAccJerk-std()-X" </code>  
* <code>"tBodyAccJerk-std()-Y" </code> 
* <code>"tBodyAccJerk-std()-Z" </code>  
* <code>"tBodyGyro-mean()-X"</code>
* <code>"tBodyGyro-mean()-Y"</code>
* <code>"tBodyGyro-mean()-Z"</code>
* <code>"tBodyGyro-std()-X"</code>
* <code>"tBodyGyro-std()-Y"</code>
* <code>"tBodyGyro-std()-Z"</code>
* <code>"tBodyGyroJerk-mean()-X"</code>
* <code>"tBodyGyroJerk-mean()-Y"</code>
* <code>"tBodyGyroJerk-mean()-Z" </code> 
* <code>"tBodyGyroJerk-std()-X"</code>  
* <code>"tBodyGyroJerk-std()-Y" </code> 
* <code>"tBodyGyroJerk-std()-Z" </code>     
* <code>"tBodyAccMag-mean()" </code>
* <code>"tBodyAccMag-std()" </code>
* <code>"tGravityAccMag-mean()"</code>
* <code>"tGravityAccMag-std()" </code>
* <code>"tBodyAccJerkMag-mean()" </code>
* <code>"tBodyAccJerkMag-std()"</code>
* <code>"tBodyGyroMag-mean()"</code>
* <code>"tBodyGyroMag-std()"   </code>      
* <code>"tBodyGyroJerkMag-mean()"</code>
* <code>"tBodyGyroJerkMag-std()"</code>
* <code>"fBodyAcc-mean()-X"  </code>
* <code>"fBodyAcc-mean()-Y"   </code>       
* <code>"fBodyAcc-mean()-Z" </code>
* <code>"fBodyAcc-std()-X"</code>
* <code>"fBodyAcc-std()-Y"  </code> 
* <code>"fBodyAcc-std()-Z"  </code>         
* <code>"fBodyAccJerk-mean()-X"</code>
* <code>"fBodyAccJerk-mean()-Y"</code>
* <code>"fBodyAccJerk-mean()-Z" </code> 
* <code>"fBodyAccJerk-std()-X" </code>      
* <code>"fBodyAccJerk-std()-Y" </code>
* <code>"fBodyAccJerk-std()-Z" </code>
* <code>"fBodyGyro-mean()-X" </code> 
* <code>"fBodyGyro-mean()-Y" </code>        
* <code>"fBodyGyro-mean()-Z" </code>
* <code>"fBodyGyro-std()-X"  </code> 
* <code>"fBodyGyro-std()-Y"  </code>
* <code>"fBodyGyro-std()-Z"  </code>        
* <code>"fBodyAccMag-mean()"</code>
* <code>"fBodyAccMag-std()"  </code>
* <code>"fBodyBodyAccJerkMag-mean()"</code>
* <code>"fBodyBodyAccJerkMag-std()"  </code>
* <code>"fBodyBodyGyroMag-mean()" </code>
* <code>"fBodyBodyGyroMag-std()"</code>
* <code>"fBodyBodyGyroJerkMag-mean()"</code>
* <code>"fBodyBodyGyroJerkMag-std()" </code>

##Transformation 
1. Read and create variables from downloaded files.
2. <code>rbind()</code> testing and training datasets.
3. Create variable witn x-names and logical vector that corresponds to names with "mean" or "std" in.
4. Create variables with y-names.
5. Create combined dataset of all variables
6. Create melt data and then aggregate them my mean