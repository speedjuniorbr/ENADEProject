# BoxPlot Gross test score of the discursive part of the specific component in ENADE
g <- ggplot(mData, aes(x=NU_ANO, y=NT_FG))
myplot <- g + geom_boxplot() + geom_boxplot() + geom_smooth(method = "lm", se=TRUE, aes(group=1)) + labs(x="Year") + labs(y="Score") + labs(title="Plot 1: Gross test score of general graduation in ENADE 2008 - 2018")  
png("general_graduation_score.png", width = 800, height = 600)
print(myplot)
dev.off()

# BoxPlot Gross test score of the specific component in ENADE
g <- ggplot(mData, aes(x=NU_ANO, y=NT_CE))
myplot <- g + geom_boxplot() + geom_smooth(method = "lm", se=TRUE, aes(group=1)) + labs(x="Year") + labs(y="Score") + labs(title="Plot 2: Gross test score of specific component in ENADE 2008 - 2018") 
png("specific_cmp_score.png" , width = 800, height = 600)
print(myplot)
dev.off()

# BoxPlot Gross test score in ENADE
# Characterizing by Sex.
g <- ggplot(mData, aes(x=NU_ANO, y=NT_GER))
myplot <- g + geom_boxplot() + geom_smooth(method = "lm", se=TRUE, aes(group=1)) + labs(x="Year") + labs(y="Score") + labs(title="Plot 3: Gross test score (overall scores) in ENADE 2008 - 2018") 
png("general_score.png" , width = 800, height = 600)
print(myplot)
dev.off()

# Improve TAX
nt_


