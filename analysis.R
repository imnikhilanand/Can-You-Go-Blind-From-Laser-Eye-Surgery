
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

# columns in the diabetic dataframe
names(diabetic)

# only those rows where patient was diagonised
diabetic2 <- subset(diabetic, trt==1)

# fitting the survival curve
fit<-survfit(Surv(time, status) ~ laser, data=diabetic2)

# Summary of survival curves
summary(fit)

# Access to the sort summary table
summary(fit)$table

# dataframe to create the Kaplan-Meire Curve
d <- data.frame(time = fit$time,
                n.risk = fit$n.risk,
                n.event = fit$n.event,
                n.censor = fit$n.censor,
                surv = fit$surv,
                upper = fit$upper,
                lower = fit$lower
                )

# Visualizing the Kaplan-Meire Curve
ggsurvplot(fit,
           pval = TRUE, conf.int = TRUE,
           risk.table = TRUE, # Add risk table
           risk.table.col = "strata", # Change risk table color by groups
           linetype = "strata", # Change line type by groups
           surv.median.line = "hv", # Specify median survival
           ggtheme = theme_bw(), # Change ggplot2 theme
           palette = c("#E7B800", "#2E9FDF")
           )

# Log-Rank test comparing survival curves
surv_diff <- survdiff(Surv(time, status) ~ laser, data = diabetic2)



