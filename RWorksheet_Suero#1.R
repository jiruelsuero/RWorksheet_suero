#WorkSheet#1

#vector
#age 34, 28, 22, 36, 27, 18, 52, 39, 42, 29
#35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41
#51, 35, 24, 33, 41

#1
  #a How many data points
age <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
51, 35, 24, 33, 41)
age
#1.a
  #Output34
#1.b
datap<- length(age)
datap  
  
#2Find the reciprocal of the values for age.Write the R code and its output.

  reciprocated<-1/age
  reciprocated 
#Output 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077
  #0.02564103 0.02380952 0.03448276 0.02857143 0.03225806 0.03703704 0.04545455
  #0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816 0.02000000
  #0.02702703 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952 0.01886792
  #0.02439024 0.01960784 0.02857143 0.04166667 0.03030303 0.02439024

  
#3 Assign also new_age<- c (age,0, age).  
  new_age<- c(age, 0, age)
  new_age
  #What happen to the new _age?
  #it has O in between the old age and new age
  
#4 Sort the values for age.Write the R code and its output.
  sorted <-sort(age)
  sorted
  #Output 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57
  

#5 Find the minimum and maximum value for age  Write the R code and its output.
  agemax<-max(age)
  agemin<-min(age)
  agemax  
  agemin 
  #Output agemax 57 agemin 17

#6Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,2.5, 2.3, 2.4, and 2.7.
  #6.a 12 Data points

#6.b #Output 12
  datap2 <- length(vect)
  datap2
#7Generates a new vector for data where you double every value of the data. | What happen to the data?
  newData <- c(1,2,3,4,5,6,7,8,9,10)
  doubleData <- newData *2 
  doubleData  
 #it double the value of each data
  
#8Generate a sequence for the following scenario:
  #8.1 Integers from 1 to 100.  
# 8.1
  intFrom1to100 <- seq(1,100)
  intFrom1to100
  
# 8.2
  numFrom20to60 <- seq(20,60)
  numFrom20to60
# 8.3
  
  meanOfNumFrom20to60 <- mean(numFrom20to60)
  meanOfNumFrom20to60
  
# 8.4

  seqOf51to91 <- seq(51,91)
  sumOfnumFrom51to91 <- sum(seqOf51to91)
  sumOfnumFrom51to91
# 8.5
  intfrom1to1000 <- seq(1,1000)
  intfrom1to1000
  
  # 8.5.a
  # sum of all data points from 8.1 to 8.4
  #Output 143
  
  
#8.5.b
  alldataPoints <- length(intFrom1to100) + length(numFrom20to60) + length(meanOfNumFrom20to60) + length(sumOfNumFrom51to91)
  alldataPoints
  
  #Output  143
  
  
# 8.c
  new_85 <- seq(1,10)
  maxUntil10 <- max(new_85)
  maxUntil10
  
# 9 *Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.
  new_vec <- Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
  new_vec
  
  #Output 1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 47 52 53 58 59 61 62 64 67 68 71 73 74 76 79 82 83 86 88 89 92 94 97
 
# 10 Generate a sequence backwards of the integers from 1 to 100.
  int_100_1 <- seq(100, 1)
  int_100_1
  
  #Output 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83  82  81 80  79  78  77  76  75  74  73  72  71  70  69  68  67  66  65  64  63  62  61 60  59  58  57  56  55  54  53  52  51  50  49  48  47  46  45  44  43  42  41 40  39  38  37  36  35  34  33  32  31  30  29  28  27  26  25  24  23  22  21  20  19  18  17  16  15  14  13  12  11  10   9   8   7   6   5   4   3   2   
 
  
# 11 List all the natural numbers below 25 that are multiples of 3 or 5.
  #Find the sum of these multiples.
  natural_num_25 <- Filter(function(i) { all(i %% 3 == 0 || i %% 5 == 0) }, seq(24))
  natural_num_25
  sum_25 <- sum(natural_num_25)
  sum_25
  
  # 11.a
  # 112
  # 11.b
  totl_data_pts <- length(int_100_1) + length(natural_num_25) + length(sum_25)
  totl_data_pts
  #Output totl_data_pts 112
  
# 12 Statements can be grouped together using braces ‘{’ and ‘}’. A group of statements is sometimes called a block. Single statements are evaluated when a new line is typed at the end of the syntactically complete statement. Blocks are not evaluated until a new line is entered after the closing brace.
  { x <- 0
    + x + 5 + }
 
  # without a corresponding opening bracket,
  # removing the extra plus sign at the end can fix it
  # considered as a block of code
  # this code has syntax error
  # two consecutive plus sign and a closing bracket is what the R reads

# 13 *Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75, 75 and 77. To access individual elements of an atomic vector, one generally uses the x[i]construction.
  score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
  score
  
  element_2 <- score[2]
  element_3 <- score[3]
  
  element_2
  element_3
  #Output  element_2 86 element_3 92
  
# 14 *Create a vector a = c(1,2,NA,4,NA,6,7).
  a = c(1,2,NA,4,NA,6,7)
  a
  print(a, na.print="999")
  
  # the code replaces NA with 999 and prints the vector "a"
  
# 15 A special type of function calls can appear on the left hand side of the assignment operator as in > class(x) <- "foo".
  name = readline(prompt="Input your name: ")
  age = readline(prompt="Input your age: ")
  print(paste("My name is",name, "and I am",age ,"years old."))
  print(R.version.string)
  
  # this will print a message with their inputted name and age
  # this will print the R version information from "R.version.string"
  # user's input for their name and age is what the output depends
  