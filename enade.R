glibrary(ggplot2)

# Load Data
dt <- read.csv("ENADE2010-2018.csv")

# Enable FACTOR
dt$NU_ANO <- as.factor(dt$NU_ANO)

# BoxPlot General Grade in ENADE
g <- ggplot(dt, aes(x=NU_ANO, y=NT_GER, color=TP_SEXO))
myplot <- g + geom_boxplot() + geom_smooth(method = "lm", se=TRUE, aes(group=1)) + labs(x="Year") + labs(y="Grade") + labs(title="Overview General Grade ENADE 2010 - 2018") + labs(color="Sex") + labs(fill="Sex")
png("general_grade.png", width = 800, height = 600)
print(myplot)
dev.off()

# BoxPlot General Formation Grade in ENADE
g <- ggplot(dt, aes(x=NU_ANO, y=NT_FG, color=TP_SEXO))
myplot <- g + geom_boxplot() + geom_smooth(method = "lm", se=TRUE, aes(group=1)) + labs(x="Year") + labs(y="Grade") + labs(title="Overview General Graduation Grade ENADE 2010 - 2018") + labs(color="Sex") + labs(fill="Sex")
png("general_formation_grade.png" , width = 800, height = 600)
print(myplot)
dev.off()

# Density per SEX each YEAR for General Grade in ENADE
g <- ggplot(dt, aes(x=NT_GER, color=TP_SEXO, fill=TP_SEXO))
myplot <- g + geom_density(alpha = 0.3) + facet_wrap(~NU_ANO) + labs(x="General Grade") + labs(y="Density") + labs(title="Distribution by Sex each Year") + labs(color="Sex") + labs(fill="Sex")
png("general_grade_densit.png" , width = 800, height = 600)
print(myplot)
dev.off()

# Density per SEX each YEAR for General Formation Grade in ENADE
g <- ggplot(dt, aes(x=NT_FG, color=TP_SEXO, fill=TP_SEXO))
myplot <- g + geom_density(alpha = 0.3) + facet_wrap(~NU_ANO) + labs(x="General Formation Grade") + labs(y="Density") + labs(title="Distribution by Sex each Year") + labs(color="Sex") + labs(fill="Sex")
png("general_formation_grade_densit.png" , width = 800, height = 600)
print(myplot)
dev.off()

# Histogram per SEX each YEAR for General Grade in ENADE
g <- ggplot(dt, aes(x=NT_GER, color=TP_SEXO, fill=TP_SEXO))
myplot <- g + geom_histogram(alpha = 0.3) + facet_wrap(~NU_ANO) + labs(x="General Grade") + labs(y="Quant") + labs(title="Distribution by Sex each Year") + labs(color="Sex") + labs(fill="Sex")
png("general_grade_hist.png" , width = 800, height = 600)
print(myplot)
dev.off()

# Histogram per SEX each YEAR for General Formation Grade in ENADE
g <- ggplot(dt, aes(x=NT_FG, color=TP_SEXO, fill=TP_SEXO))
myplot <- g + geom_histogram(alpha = 0.3) + facet_wrap(~NU_ANO) + labs(x="General Formation Grade") + labs(y="Quant") + labs(title="Distribution by Sex each Year") + labs(color="Sex") + labs(fill="Sex")
png("general_formation_grade_hist.png" , width = 800, height = 600)
print(myplot)
dev.off()