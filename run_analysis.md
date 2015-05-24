
###Gain the Dataset 
###获取数据集

---

Download the file. Put it in the working folder and unzip it.
下载文件到工作目录下，并解压它。


```r
Directory <- file.path(getwd(),"UCI HAR Dataset")

if (!file.exists(Directory)) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  temp <- "./temp.zip"
  download.file(url,temp, method = 'curl')
  unzip(temp, exdir="./")
  file.remove(temp)
}
```

###Read Data from Dataset 
###从数据集中读取数据

---

Read different data files and set suitable names for them.
读取不同的数据文件并以合适变量名。


```r
subject_train <- read.table(file.path(Directory, "train", "subject_train.txt"))
subject_test  <- read.table(file.path(Directory, "test" , "subject_test.txt" ))
y_train <- read.table(file.path(Directory, "train", "y_train.txt"))
y_test  <- read.table(file.path(Directory, "test" , "y_test.txt" ))
x_train <- read.table(file.path(Directory, "train", "X_train.txt"))
x_test  <- read.table(file.path(Directory, "test" , "X_test.txt" ))
```

###Merge training and test sets 
###合并训练集和测试集

---


```r
subject <- rbind(subject_train, subject_test)
setnames(subject, "V1","subjects")
y <- rbind(y_train, y_test)
setnames(y, "V1","labels")
x <- rbind(x_train, x_test)

subject <- cbind(subject, y)
x <- cbind(subject, x)
x <- data.table(x)
setkey(x, subjects, labels)
```

###Extracts the mean and standard deviation measurement 
###提取测量平均值和每次测量的标准差

The measurements for the mean and standard deviation can be found in the ```features.txt``` file.
平均值和标准差的测量值可以在```features.txt```文件中找到。


```r
features <- read.table(file.path(Directory, "features.txt"))
setnames(features, names(features), c("fnum","fname"))

features_index <- grep("mean\\(\\)|std\\(\\)", features$fname)
features <- features[features_index,]

features_new_col <- paste0("V", features$fnum, sep="")
features <- data.table(features,features_new_col)
setnames(features, names(features),c("fnum","fname","fcode"))

x <- x[,c(key(x), features$fcode), with = FALSE]
```

###Uses descriptive activity names to name the activities in the data set
###使用描述性活动名称命名数据集中的活动

---

Descriptive activity names can be found in the ```activity_labes.txt``` file.
描述性变量名称能在```activity_labes.txt```中找到。


```r
activity_labels <- read.table(file.path(Directory, "activity_labels.txt"))
setnames(activity_labels, names(activity_labels), c("labels","aname"))
```

###Label the data set with descriptive variable names
###使用描述性变量名称恰当标记数据集

---


```r
x <- merge(x, activity_labels, by="labels", all.x=TRUE)

setkey(x, subjects, labels, aname)
x <- data.table(melt(x,key(x),variable.name="fcode"))
x <- merge(x, features[, list(fnum,fcode,fname)], by = "fcode", all.x = TRUE)

setkey(x,subjects, labels,aname)
x <- x[,mean(value),key(x)]
setnames(x, names(x), c("subjects", "activity_labels", "activity_name", "average"))
```

###Creat a new tidy dataset
###创建一个新的整洁数据集

---


```r
new_dataset <- file.path(getwd(), "Dataset_for_homework.txt")
write.table(x, new_dataset, quote=FALSE,sep="  ", row.names=FALSE)
tidy_dataset <- x
```

