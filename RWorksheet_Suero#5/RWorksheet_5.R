---
  title: "RWorksheet_5"
author: "Jiruel Suero BSIT 2-C"
date: "2023-12-14"
output: pdf_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


#1. Create a data frame for the table below. Show your solution.
#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.


StudentScore <- data.frame(Student = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                           PreTest = c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58),
                           PostTest = c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61))

StudentScore

library(Hmisc)
library(pastecs)

HmiscStats <- describe(StudentScore[, c("PreTest", "PostTest")])
HmiscStats

pastecsStats <- stat.desc(StudentScore[, c('PreTest', 'PostTest')])
pastecsStats


#2. The Department of Agriculture was studying the effects of several levels of a fertilizer on the growth of a plant. For some analyses, it might be useful to convert the fertilizer levels to an ordered factor.

library(dplyr)

fertilizerLevels <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)

orderedFactor <- factor(fertilizerLevels, levels = unique(fertilizerLevels))

basicStats <- summary(orderedFactor)
basicStats
#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study the ex-
  ercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” , “l”, “n”,

“n”, “i”, “l” ; n=none, l=light, i=intense
#a. What is the best way to represent this in R?
  
excerciseLevels <- c("n", "l", "n", "n", "l", "l", "n", "n", "i", "l")

ExerciseFactor <- factor(excerciseLevels, levels = c("n","l","i"))


basic_stats <- summary(ExerciseFactor)
basic_stats

#4. Sample of 30 tax accountants from all the states and territories of Australia and their individual state of origin is specified by a character vector of state mnemonics as:
  state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
             "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
             "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
             "vic", "vic", "act")
#a. Apply the factor function and factor level. Describe the results.

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
stateFactor <- factor(state)
stateFactor

summaryState <- summary(stateFactor)


#The output will show the levels (unique values) in the factor (act, nsw, nt, qld, sa, tas, vic, wa) and the corresponding frequencies (counts). For example, the output might look like t


#5. From #4 - continuation:
#Suppose we have the incomes of the same tax accountants in another vector (in suitably large units of money)
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

#a. Calculate the sample mean income for each state we can now use the special function tapply():
  
  
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

meanIncome <- tapply(incomes, stateFactor, mean)
meanIncome

#b. Copy the results and interpret.

#  act      nsw       nt      qld       sa      tas      vic       wa 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 
#The code attempts to calculate the mean income for different states using the tapply function, but it appears incomplete and lacks a defined grouping factor for states; thus, it may not produce meaningful results as written.



#6.Calculate the standard errors of the state income means (refer again to number 3)
#stdError <- function(x) sqrt(var(x)/length(x))
#Note: After this assignment, the standard errors are calculated by:
  #incster <- tapply(incomes, statef, stdError)
#a. What is the standard error? Write the codes.

stdError <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, state, stdError)
standardError <- tapply(incomes, stateFactor, stdError)
standardError
#7. Use the titanic dataset.

#a. subset the titatic dataset of those who survived and not survived. Show the code and its result.


install.packages("titanic")
library(titanic)

data("titanic_train")
titanic_data <- titanic_train

survived_data <- subset(titanic_data, Survived == 1)

not_survived_data <- subset(titanic_data, Survived == 0)

head(survived_data)
head(not_survived_data)


survived_data <- titanic_data[titanic_data$Survived == 1, ]

not_survived_data <- titanic_data[titanic_data$Survived == 0, ]


head(survived_data)
head(not_survived_data)


#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this

chronologihttps://drive.google.com/file/d/16MFLoehCgx2MJuNSAuB2CsBy6eDIIr-
  u/view?usp=drive_link)
a. describe what is the dataset all about.

#The dataset consists of cytological features of breast cancer cell samples, such as clump thickness, size uniformity, shape uniformity, marginal adhesion, epithelial size, bare nucleoli, bland chromatin, normal nucleoli, mitoses, and the corresponding class labels, with various records containing information on benign or malignant tumors.


#d. Compute the descriptive statistics using different packages. Find the values of:
 # d.1 Standard error of the mean for clump thickness.



library(readr)

breastcancer_wisconsin <- read_csv("/cloud/project/breastcancer_wisconsin.csv")

View(breastcancer_wisconsin)

breastcancer_wisconsin$bare_nucleoli <- as.numeric(breastcancer_wisconsin$bare_nucleoli)

clump_thickness_mean <- mean(breastcancer_wisconsin$clump_thickness)
clump_thickness_sd <- sd(breastcancer_wisconsin$clump_thickness)
clump_thickness_sem <- clump_thickness_sd / sqrt(length(breastcancer_wisconsin$clump_thickness))

clump_thickness_mean
clump_thickness_sd
clump_thickness_sem

#d.2 Coefficient of variability for Marginal Adhesion.



colnames(breastcancer_wisconsin)
marginal_adhesion_cv <- sd(breastcancer_wisconsin$`Marginal Adhesion`) / mean(breastcancer_wisconsin$`Marginal Adhesion`, na.rm = TRUE) * 100
marginal_adhesion_cv


#d.3 Number of null values of Bare Nuclei.



bare_nuclei_null_count <- sum(is.na(breastcancer_wisconsin$`Bare Nuclei`))


bare_nuclei_null_count

#d.4 Mean and standard deviation for Bland Chromatin


colnames(breastcancer_wisconsin)
breastcancer_wisconsin$bare_nucleoli <- as.numeric(breastcancer_wisconsin$bare_nucleoli)


col_index <- grep("Bland Chromatin", colnames(breastcancer_wisconsin))


bland_chromatin_mean <- mean(breastcancer_wisconsin$clump_thickness)
bland_chromatin_sd <- sd(breastcancer_wisconsin$clump_thickness)
clump_thickness_sem <- clump_thickness_sd / sqrt(length(breastcancer_wisconsin$clump_thickness))
bland_chromatin_mean
bland_chromatin_sd

#d.5 Confidence interval of the mean for Uniformity of Cell Shape


library(readr)

data <- read_csv("/cloud/project/breastcancer_wisconsin.csv")

# Extract the column of interest
column_of_interest <- data$`Uniformity of Cell Shape`

column_of_interest_clean <- na.omit(column_of_interest)

sample_mean <- mean(column_of_interest_clean)
sample_size <- length(column_of_interest_clean)
sample_sd <- sd(column_of_interest_clean)

confidence_level <- 0.95

margin_of_error <- qt((1 + confidence_level) / 2, df = sample_size - 1) * (sample_sd / sqrt(sample_size))

confidence_interval <- c(sample_mean - margin_of_error, sample_mean + margin_of_error)


cat("Sample Mean:", sample_mean, "\n")
cat("Confidence Interval:", confidence_interval[1], "to", confidence_interval[2], "\n")





#9.Export the data abalone to the Microsoft excel file. Copy the codes.
library("AppliedPredictiveModeling")
library(MASS)
data(abalone)
View(abalone)
str(abalone)
head(abalone)
summary(abalone)

openxlsx::write.xlsx(abalone, "/cloud/project/RWorksheet_Suero#4.xlsx", sheetName = "AbaloneData", rowNames = FALSE)


