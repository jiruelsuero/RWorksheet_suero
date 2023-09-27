#1 Create a vector using : operator
# a. Sequence from -5 to 5. Write the R code and its output.
# Describe its output.

Negative5to5<-seq(-5,5)
Negative5to5

# It generates numbers from -5 to 5


#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

# The value of x will be 1 2 3 4 5 6 7

#Create a vector using seq() function
# a. seq(1, 3, by=0.2) # specify step size

VectorSeq <-seq(1,3,by=0.2)
VectorSeq
# Write the R script and its output. Describe the output.
# The output is 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 the numbers have a step size of 0.2 in between
Factoryworkers <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
          22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
          24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
          18.)
Factoryworkers 

Factoryworkers[(3)]
Factoryworkers [c(2,4)]


#3 a. Access 3rd element, what is the value?
# 22

# b. Access 2nd and 4th element, what are the values?
# 28 and 36

# c. Access all but the 4th and 12th element is not included. Write the R script and its output.
Factoryworkers [c(1:3,5:11,13:50)]
# Output 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18


#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).



#a. Print the results. Then access x[c("first", "third")].
#Describe the output.
x
x [c("first", "third")]

#The output shows that results just printed the word first and third

#b.
x <- c(first=3, second=0, third=9)
x


#5 Create a sequence x from -3:2.
x<-seq(-3,2)
x
#a. Modify 2nd element and change it to 0;
x[2] <- 0
x
#Describe the output.
#The output shows that the second number changes and turn to 0


#b.Write the code and its output.
x<-seq(-3,2)
x
x[2] <- 0
x
# output  -3  0 -1  0  1  2


#6 *The following data shows the diesel fuel purchased by Mr. Cruz.
# Month Jan Feb March Apr May June
# Price per liter (PhP) 52.50 57.25 60.00 65.00 74.25 54.00
# Purchase–quantity(Liters) 25 30 40 50 10 45


#a.Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.

Purchases <-data.frame(
 
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Priceperliter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchasequantity  = c(25,30,40,50,10,45)
) 
Purchases
View(Purchases)
#b.
