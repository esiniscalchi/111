Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
Blood_pressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
Final_decision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
Patients_Histories <- data.frame(Frequency, Blood_pressure, First, Second, Final_decision)
Patients_Histories
Frequency Blood_pressure First Second Final_decision
1        0.6            103     1      0              0
2        0.3             87     1      0              1
3        0.4             32     1      1              0
4        0.4             42     1      1              1
5        0.2             59     0      0              0
6        0.6            109     0      0              1
7        0.3             78     0      1              0
8        0.4            205     0      1              1
9        0.9            135    NA      1              1
10       0.2            176     1      1              1

boxplot(Frequency, data=First, Second, Final_decision, main="Boxplot of Frequency Measurements", ylab="Measurements")

boxplot(Frequency[First==0], Frequency[First==1], main="Boxplot of First MD Visit", ylab="Measurements")

boxplot(Frequency[Second==0], Frequency[Second==1], main="Boxplot of Second MD Visit", ylab="Measurements")

boxplot(Frequency[Final_decision==0], Frequency[Final_decision==1], main="Boxplot of Final MD Visit", ylab="Measurements")

hist(Frequency)

hist(Frequency, breaks=15, ylim=c(0, 4), xlab="Measurements", col="blue")

hist(Blood_pressure, main="Measurements of Blood Pressure", breaks=15, ylim=c(0, 4), xlim=c(0,250), xlab="Measurements", col="blue")

hist(First)

hist(Second)

hist(Final_decision)