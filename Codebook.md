###Code Book for my Tidy Data

In the raw data there were 561 variables, I have just picked the variables having mean() or std() as a part of the name.
It resulted in 79 variables. Three more variables (Subject, Activity_Name and Activity as an integer 1:6) are added.Hence the Tidy Data has 82 variables(columns).
There is one observation per person per activity, 30 persons and 6 activities. That makes 180 observation (rows).

1. Subject: There are 30 levels (persons): 

           1:30 denoting subjects
           
2. Activity_Name: There are 6 levels (activity names):

          1 WALKING
          2 WALKING_UPSTAIRS
          3 WALKING_DOWNSTAIRS
          4 SITTING
          5 STANDING
          6 LAYING
          
3. Activity: six levels. Integer 1:6, It is just the activity as a number.

          1 (WALKING)
          2 (WALKING_UPSTAIRS)
          3 (WALKING_DOWNSTAIRS)
          4 (SITTING)
          5 (STANDING)
          6 (LAYING)

The followings are the  the average of each variable(features from the raw data) for each activity and each subject.Featurs information can be found on the original dataset (features_info.txt).I am also including this text file.
(Please note that I have used the same names for the variables(feature names) as in the raw data but in this case they are the means per activity per subject.)

The acceleration signal("acc") from the smartphone accelerometer in standard gravity units 'g'.

 The angular velocity vector("gyr") measured by the gyroscope for each window sample. The units are radians/second. 

4. tBodyAcc-mean()-X
5. tBodyAcc-mean()-Y
6. tBodyAcc-mean()-Z
7. tBodyAcc-std()-X
8. tBodyAcc-std()-Y
9. tBodyAcc-std()-Z

10. tGravityAcc-mean()-X
11. tGravityAcc-mean()-Y
12. tGravityAcc-mean()-Z
13. tGravityAcc-std()-X
14. tGravityAcc-std()-Y
15. tGravityAcc-std()-Z

16. tBodyAccJerk-mean()-X
17. tBodyAccJerk-mean()-Y
18. tBodyAccJerk-mean()-Z
19. tBodyAccJerk-std()-X
20. tBodyAccJerk-std()-Y
21. tBodyAccJerk-std()-Z

22. tBodyGyro-mean()-X
23. tBodyGyro-mean()-Y
24. tBodyGyro-mean()-Z
25. tBodyGyro-std()-X
26. tBodyGyro-std()-Y
27. tBodyGyro-std()-Z

28. tBodyGyroJerk-mean()-X
29. tBodyGyroJerk-mean()-Y
30. tBodyGyroJerk-mean()-Z
31. tBodyGyroJerk-std()-X
32. tBodyGyroJerk-std()-Y
33. tBodyGyroJerk-std()-Z

34. tBodyAccMag-mean()
35. tBodyAccMag-std()

36. tGravityAccMag-mean()
37. tGravityAccMag-std()

38. tBodyAccJerkMag-mean()
39. tBodyAccJerkMag-std()

40. tBodyGyroMag-mean()
41. tBodyGyroMag-std()

42. tBodyGyroJerkMag-mean()
43. tBodyGyroJerkMag-std()

44. fBodyAcc-mean()-X
45. fBodyAcc-mean()-Y
46. fBodyAcc-mean()-Z
47. fBodyAcc-std()-X
48. fBodyAcc-std()-Y
49. fBodyAcc-std()-Z

50. fBodyAcc-meanFreq()-X
51. fBodyAcc-meanFreq()-Y
52. fBodyAcc-meanFreq()-Z

53. fBodyAccJerk-mean()-X
54. fBodyAccJerk-mean()-Y
55. fBodyAccJerk-mean()-Z
56. fBodyAccJerk-std()-X
57. fBodyAccJerk-std()-Y
58. fBodyAccJerk-std()-Z

59. fBodyAccJerk-meanFreq()-X
60. fBodyAccJerk-meanFreq()-Y
61. fBodyAccJerk-meanFreq()-Z

62. fBodyGyro-mean()-X
63. fBodyGyro-mean()-Y
64. fBodyGyro-mean()-Z
65. fBodyGyro-std()-X
66. fBodyGyro-std()-Y
67. fBodyGyro-std()-Z

68. fBodyGyro-meanFreq()-X
69. fBodyGyro-meanFreq()-Y
70. fBodyGyro-meanFreq()-Z

71. fBodyAccMag-mean()
72. fBodyAccMag-std()

73. fBodyAccMag-meanFreq()

74. fBodyBodyAccJerkMag-mean()
75. fBodyBodyAccJerkMag-std()

76. fBodyBodyAccJerkMag-meanFreq()

77. fBodyBodyGyroMag-mean()
78. fBodyBodyGyroMag-std()

79. fBodyBodyGyroMag-meanFreq()

80. fBodyBodyGyroJerkMag-mean()
81. fBodyBodyGyroJerkMag-std()

82. fBodyBodyGyroJerkMag-meanFreq()
