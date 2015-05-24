#The project of Getting and Cleaning Data 获取和整理数据作业项目

***

###The requirement of project 作业项目要求
>The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
>
>One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
>
>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
>
>Here are the data for the project: 
>
>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

本课程的目的是证明您收集、运用以及整理数据集的能力。目标是准备可以用于后续分析的整洁数据。您的同学会以一系列有关项目的判断题来为您评分。您需要提交：

1. 如下所述的整洁的数据集；
2. Github repo 链接,有您执行分析的脚本；
3. 一个名为CodeBook.md的码书，描述变量、数据以及您为清理数据所执行的所有步骤。在您的repo中除了脚本，还应包含一个README.md，解释所有脚本是如何运作以及相互之间是如何连接的。

现在，所有数据科学中最令人兴奋的领域之一就是可穿戴计算 - 请看[这篇文章](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/)。公司（例如，Fitbit、Nike和Jawbone Up）正在竞相发展最先进的算法来吸引新用户。与课程网站关联的数据表示从三星GalaxyS智能手机的加速器上收集的数据。完整的解释可在获得数据的网站上获取：

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

以下是该项目的数据：

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

>You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

您应该创建一个名为run_analysis.R的R编程语言脚本，完成以下操作。

1.  整合培训和测试集，创建一个数据集。

2.  仅提取测量的平均值以及每次测量的标准差。

3.  使用描述性活动名称命名数据集中的活动

4.  使用描述性变量名称恰当标记数据集。

5.  从第4步的数据集中，针对每个活动和每个主题使用每个表里的平均值建立第2个独立的整洁数据集。

---

###Steps for solving this project 解决步骤

1. To run this project you will need to download [this dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) then unzip it to your working directory. 想要运行这个项目首先得下载这个[数据包](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)然后解压它到你的工作目录。

2. Open the R script **```run_analysis.r```** using the RStudio. You can find out ```setwd``` function that is using to set your working directory where these R script files is saved. 使用RStduio打开R代码文件**```run_analysis.r```**。你可以发现里边使用了```setwd```函数去设置好你的工作目录，即所需的R代码文件所存储的地方。

3. Run the R script file ```run_analysis.r``` and it will call ```run_analysis.Rmd```, which is a R markdown file and contains the code of requirements. 运行R代码文件```run_analysis.r```, 它会调用包含了所需代码的R Markdown文件```run_analysis.Rmd```。

4. After calling ```run_analysis.Rmd```, it can automatically create **```CodeBook.md```** by running ```makeCodeBook.Rmd```. 在调用```run_analysis.Rmd```之后，它会自动继续调用```makeCodeBook.Rmd```创建**```CodeBook.md```**。

5. The tidy dataset file **```tidyDataset.txt```** is created by running the code in ```makeCodeBook.Rmd```. 调用运行```makeCodeBook.Rmd```会产生整洁的数据集文件**```tidyDataset.txt```**。

#####supplement 补充说明
1. [R Markdown](http://rmarkdown.rstudio.com/) is an authoring format that enables easy creation of dynamic documents, presentations, and reports from R. *Using it in this project can obviously improve the efficiency*. **R markdown**是R语言运行环境RStudio所使用的扩展的markdown标签语言，能够方便的利用R语言生成web格式的报告。它包括核心的Markdown语法，并能将其中插入的R代码区块的运行结果显示在最终文档里。在这个项目使用它明显更能提升效率。

2. If you want to call a R markdown function in a R script file, first you should run ```install.packages("knitr")```. 如果你想要在R代码文件里调用一个R markdown的函数， 首先你需要运行```install.packages("knitr")```。
3. The scripts have been tested on MAC OSX. It didn't be tested on windows or linux. 文件在MAC OSX系统上已经通过测试，并没有在windows或者Linux系统上进行测试。