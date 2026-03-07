library(plyr)

students <- read.table(file.choose(), header=TRUE, sep=",")

students_gendered_mean <- ddply(students, "Sex",
                                summarise,
                                Grade.Average = mean(Grade))

students_gendered_mean

write.table(students_gendered_mean,
            "Students_Gendered_Mean.txt",
            row.names=FALSE)

i_students <- subset(students, grepl("i", Name, ignore.case=TRUE))

i_students

write.csv(i_students,
          "i_students.csv",
          row.names=FALSE)