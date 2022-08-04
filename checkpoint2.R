HR <- read.csv("HR_comma_sep.csv",header = TRUE)
dim(HR)
cor(HR$average_montly_hours, HR$number_project)

# cor=0.4172106 < 1 => average_montly_hours and average_montly_hours are not on strong positive relationship

linearMod <- lm(HR$average_montly_hours ~ HR$number_project , HR=HR)
print(linearMod)

#  average_montly_hours = 16.9*number_project+ 136.8
