
# installing the R package for Survival analysis
install.packages("survival")
install.packages("survminer")

# loading the libraries
library("survival")
library("survminer")

# loading the dataset
data(diabetic, package='survival')

# displaying the top few rows of the diabetic dataset
head(diabetic)
