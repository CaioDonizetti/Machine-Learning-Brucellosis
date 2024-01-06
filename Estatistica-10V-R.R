library(datasets)
library(ggplot2)
library(multcompView)
library(dplyr)

#--------------------------------------------------------------------------------------------
#----------------------------------------SENSIBILIDADE--------------------------------------
#--------------------------------------------------------------------------------------------

resultados = read.csv('C:/Users/caiod/Desktop/Caio Donizetti/Pós-Graduação - Mestrado/V2/Machine-Learning-Brucellosis/Resultados/Todas_Abordagens.csv',sep=',')

# analysis of variance
anova <- aov(sensitivity ~ abor, data = resultados)
summary(anova)

# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
cld <- multcompLetters4(anova, tukey)
print(cld)

# table with factors and 3rd quantile
Tk <- group_by(resultados, abor) %>%
  summarise(mean=mean(sensitivity), std = sd(sensitivity)) %>%
  arrange(desc(mean))

# extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$abor)
Tk$cld <- cld$Letters

print(Tk)

windowsFonts(A = windowsFont("Times New Roman"))

# boxplot
ggplot(resultados, aes(abor, sensitivity)) + 
  geom_boxplot() +
  labs(x="Abordagens", y="Sensibilidade") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), text=element_text(size=12, family="A")) +
  geom_text(data = Tk, aes(x = abor, y = quant, label = cld), family="A", size = 5, vjust=-1, hjust =-1)

#--------------------------------------------------------------------------------------------
#----------------------------------------ESPECIFICIDADE--------------------------------------
#--------------------------------------------------------------------------------------------

resultados = read.csv('C:/Users/caiod/Desktop/Caio Donizetti/Pós-Graduação - Mestrado/V2/Machine-Learning-Brucellosis/Resultados/Todas_Abordagens.csv',sep=',')

# analysis of variance
anova <- aov(specificity ~ abor, data = resultados)
summary(anova)

# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
cld <- multcompLetters4(anova, tukey)
print(cld)

# table with factors and 3rd quantile
Tk <- group_by(resultados, abor) %>%
  summarise(mean=mean(specificity), std = sd(specificity)) %>%
  arrange(desc(mean))

# extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$abor)
Tk$cld <- cld$Letters

print(Tk)

windowsFonts(A = windowsFont("Times New Roman"))

# boxplot
ggplot(resultados, aes(abor, specificity)) + 
  geom_boxplot() +
  labs(x="Abordagens", y="Especificidade") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), text=element_text(size=12, family="A")) +
  geom_text(data = Tk, aes(x = abor, y = quant, label = cld), family="A", size = 5, vjust=-1, hjust =-1)


#--------------------------------------------------------------------------------------------
#----------------------------------------PRECISÃO--------------------------------------------
#--------------------------------------------------------------------------------------------

resultados = read.csv('C:/Users/caiod/Desktop/Caio Donizetti/Pós-Graduação - Mestrado/V2/Machine-Learning-Brucellosis/Resultados/Todas_Abordagens.csv',sep=',')

# analysis of variance
anova <- aov(precision ~ abor, data = resultados)
summary(anova)

# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
cld <- multcompLetters4(anova, tukey)
print(cld)

# table with factors and 3rd quantile
Tk <- group_by(resultados, abor) %>%
  summarise(mean=mean(precision), std = sd(precision)) %>%
  arrange(desc(mean))

# extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$abor)
Tk$cld <- cld$Letters

print(Tk)

windowsFonts(A = windowsFont("Times New Roman"))

# boxplot
ggplot(resultados, aes(abor, precision)) + 
  geom_boxplot() +
  labs(x="Abordagens", y="Precisão") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), text=element_text(size=12, family="A")) +
  geom_text(data = Tk, aes(x = abor, y = quant, label = cld), family="A", size = 5, vjust=-1, hjust =-1)


#--------------------------------------------------------------------------------------------
#----------------------------------------F-MEASURE-------------------------------------------
#--------------------------------------------------------------------------------------------

resultados = read.csv('C:/Users/caiod/Desktop/Caio Donizetti/Pós-Graduação - Mestrado/V2/Machine-Learning-Brucellosis/Resultados/Todas_Abordagens.csv',sep=',')

# analysis of variance
anova <- aov(f2score ~ abor, data = resultados)
summary(anova)

# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
cld <- multcompLetters4(anova, tukey)
print(cld)

# table with factors and 3rd quantile
Tk <- group_by(resultados, abor) %>%
  summarise(mean=mean(f2score), std = sd(f2score)) %>%
  arrange(desc(mean))

# extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$abor)
Tk$cld <- cld$Letters

print(Tk)

windowsFonts(A = windowsFont("Times New Roman"))

# boxplot
ggplot(resultados, aes(abor, f2score)) + 
  geom_boxplot() +
  labs(x="Abordagens", y="F-measure") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), text=element_text(size=12, family="A")) +
  geom_text(data = Tk, aes(x = abor, y = quant, label = cld), family="A", size = 5, vjust=-1, hjust =-1)

#--------------------------------------------------------------------------------------------
#----------------------------------------G-MEAN---------------------------------------------
#--------------------------------------------------------------------------------------------

resultados = read.csv('C:/Users/caiod/Desktop/Caio Donizetti/Pós-Graduação - Mestrado/V2/Machine-Learning-Brucellosis/Resultados/Todas_Abordagens.csv',sep=',')

# analysis of variance
anova <- aov(gmean ~ abor, data = resultados)
summary(anova)

# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
cld <- multcompLetters4(anova, tukey)
print(cld)

# table with factors and 3rd quantile
Tk <- group_by(resultados, abor) %>%
  summarise(mean=mean(gmean), std = sd(gmean)) %>%
  arrange(desc(mean))

# extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$abor)
Tk$cld <- cld$Letters

print(Tk)

windowsFonts(A = windowsFont("Times New Roman"))

# boxplot
ggplot(resultados, aes(abor, gmean)) + 
  geom_boxplot() +
  labs(x="Abordagens", y="G-mean") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), text=element_text(size=12, family="A")) +
  geom_text(data = Tk, aes(x = abor, y = quant, label = cld), family="A", size = 5, vjust=-1, hjust =-1)


#--------------------------------------------------------------------------------------------
#----------------------------------------IBA-------------------------------------------------
#--------------------------------------------------------------------------------------------

resultados = read.csv('C:/Users/caiod/Desktop/Caio Donizetti/Pós-Graduação - Mestrado/V2/Machine-Learning-Brucellosis/Resultados/Todas_Abordagens.csv',sep=',')

# analysis of variance
anova <- aov(gmean_mba ~ abor, data = resultados)
summary(anova)

# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# compact letter display
cld <- multcompLetters4(anova, tukey)
print(cld)

# table with factors and 3rd quantile
Tk <- group_by(resultados, abor) %>%
  summarise(mean=mean(gmean_mba), std = sd(gmean_mba)) %>%
  arrange(desc(mean))

# extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$abor)
Tk$cld <- cld$Letters

print(Tk)

windowsFonts(A = windowsFont("Times New Roman"))

# boxplot
ggplot(resultados, aes(abor, gmean_mba)) + 
  geom_boxplot() +
  labs(x="Abordagens", y="IBA") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), text=element_text(size=12, family="A")) +
  geom_text(data = Tk, aes(x = abor, y = quant, label = cld), family="A", size = 5, vjust=-1, hjust =-1)
