# Module 4 Assignment
# data set contains 5 variables based on observation of 10 patients
# Frequency, Bloodpressure (BP), Fisrt assessment, Second Assessment, EU Final Decision. 
# In the first assessment it is based on 2 factors 1 = "bad", 0 = "good"
# in the second and final decisions it is based on 0 = low and 1 = high
# initialize vectors
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
Final <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
# Put it away in a nice Data frame called localhospital
localhospital <- data.frame(Frequency, BP, First, Second, Final)
str(localhospital)
# Here we are going to make the graphs
# Vector of colors
colors = c("green", "yellow", "orange", "red", "black")
#Bloxplots
par(mfrow = c(2,2))
boxplot(localhospital$BP ~ localhospital$Frequency, xlab = "Frequency of Visits", ylab = "Distribuation of Blood Pressure", col = "darkred")
boxplot(localhospital$BP ~ localhospital$First, xlab = "First Assessment (1 = bad, 0 = good)", ylab = "Distribution of Blood Pressure", col = "blue")
boxplot(localhospital$BP ~ localhospital$Second, xlab = "Second Assessment Immediate Care", ylab = "Distribution of Blood Pressure", sub = "0 = low and 1 = high", col = "green")
boxplot(localhospital$BP ~ localhospital$Final, xlab = "Final Assessment for Immediate Care", ylab = "Distribution of Blood Pressure",sub = "0 = low and 1 = high", col = "red")
#Histograms
par(mfrow = c(1,2))
hist(BP, xlab = "Blood Pressure", main = "Blood Pressure Histogram", col = colors)
hist(Frequency, xlab = "Frequency of Visits in a 12 Month Cycle", col = colors)


