Variable list and descriptions
------------------------------

Variable name    | Description
-----------------|------------
subjects         | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity_labels  | Activity type number, range 1 to 6.
activity_name    | Activity name
average          |  Average of each variable for each activity and each subject

Dataset structure
-----------------


```r
str(tidy_dataset)
```

```
## Classes 'data.table' and 'data.frame':	180 obs. of  4 variables:
##  $ subjects       : int  1 1 1 1 1 1 2 2 2 2 ...
##  $ activity_labels: int  1 2 3 4 5 6 1 2 3 4 ...
##  $ activity_name  : Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1 4 6 5 2 ...
##  $ average        : num  -0.193 -0.315 -0.149 -0.725 -0.752 ...
##  - attr(*, "sorted")= chr  "subjects" "activity_labels" "activity_name"
##  - attr(*, ".internal.selfref")=<externalptr>
```

List the key variables in the data table
----------------------------------------


```r
key(tidy_dataset)
```

```
## [1] "subjects"        "activity_labels" "activity_name"
```

Show a few rows of the dataset
------------------------------


```r
tidy_dataset
```

```
##      subjects activity_labels      activity_name    average
##   1:        1               1            WALKING -0.1932046
##   2:        1               2   WALKING_UPSTAIRS -0.3153368
##   3:        1               3 WALKING_DOWNSTAIRS -0.1493580
##   4:        1               4            SITTING -0.7250103
##   5:        1               5           STANDING -0.7518869
##  ---                                                       
## 176:       30               2   WALKING_UPSTAIRS -0.3389130
## 177:       30               3 WALKING_DOWNSTAIRS -0.2175234
## 178:       30               4            SITTING -0.7320585
## 179:       30               5           STANDING -0.7142919
## 180:       30               6             LAYING -0.7337195
```

Summary of variables
--------------------


```r
summary(tidy_dataset)
```

```
##     subjects    activity_labels            activity_name    average       
##  Min.   : 1.0   Min.   :1.0     LAYING            :30    Min.   :-0.7535  
##  1st Qu.: 8.0   1st Qu.:2.0     SITTING           :30    1st Qu.:-0.7337  
##  Median :15.5   Median :3.5     STANDING          :30    Median :-0.5452  
##  Mean   :15.5   Mean   :3.5     WALKING           :30    Mean   :-0.4844  
##  3rd Qu.:23.0   3rd Qu.:5.0     WALKING_DOWNSTAIRS:30    3rd Qu.:-0.2410  
##  Max.   :30.0   Max.   :6.0     WALKING_UPSTAIRS  :30    Max.   : 0.1549
```


