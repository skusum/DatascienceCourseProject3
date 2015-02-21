### Getting and Cleaning Data:

First of all the raw data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and loaded into R.

####The dataset includes the following files:


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
   Its range is from 1 to 30. 
   
- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
   Its range is from 1 to 30. 



First of all the two datas X_test and X_train are combined rowwise.It is a dataframe with 561 columns. It's columns are assigned  names as per features given in the features.txt. 
Since we are concerned only with the data related to mean and standard deviation, a subset of the data with columns having names having mean() or std() in it was made. On this subset it has only 79 columns. 

The two datas (test & train) for both Subject(subject_test, subject_train) and Activity(y_test, y_train) are also combined rowwise (in the same order, test & train).They are actually column vectors. These two datas are given the column names as "Subject" and "Activity"

So all three combined datas has same no of rows.

Now these three datas are combined columnwise. This is a data with 81 columns.

The data is grouped with subject and then activity and the column mean of each group is calculated
and put it back to a dataframe using the following function.


```dat14 <- ddply(dat13, c("Subject", "Activity"), function(df)c(sapply(df[ , 3:81], mean)))```

The Activity column has the integers 1:6 assigned for different activities. So a new column vector "Activity Name" with the activity names is created. It again has the same no of rows. It is also combined columnwise with the above combined data so as to get a data with 82 columns.
Finally I just wanted to make the subject column as the first column(thought it would look nicer), I switched the first two columns.

Final data has the dimension 180, 82.

All the entries in the Final data(col 4:82) are mean of the corresponding features for an activity for a person.

Please read my tidy data 

```dat <- read.table("mytidydata1.txt", header=TRUE)```

```View(dat)```

