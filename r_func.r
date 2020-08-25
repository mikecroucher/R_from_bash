suppressPackageStartupMessages(library(R.utils))        # Provides a more advanced commandArgs() 

# Define the R function
my_R_function <- function(filename,num1,num2) {
	print(sprintf('The filename I got is %s' ,filename))
	print(sprintf('num1 was %d. To prove it is a number, here it is with 1 added to it %d',num1,num1 + 1))
	print(sprintf('num2 was %f. To prove it is a number, here it is with 1 added to it %f',num2,num2 + 1))
}

#This script expects to be called from Bash like this
#Rscript r_func.r --args --filename='filename.csv' --num1=5 --num2=62.36

#Get the command line arguments 
args <- commandArgs(asValue=TRUE,excludeReserved=TRUE)
filename = args$filename
#Any numbers coming in from Bash will be strings so we need to convert them to numbers
num1 = as.numeric(args$num1)    
num2 = as.numeric(args$num2)

my_R_function(filename,num1,num2)
