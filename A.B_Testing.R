#H0: Offering a 10% discount does not impact purchase frequency
#H1: Offering a 10% discount does impact the purchase frequency

library(stats)
library(dplyr)
library(ggplot2)

test_df <- read.csv('Data Analysis Projects/Project_2/Final_dataset.csv')

View(test_df)
str(test_df)

set.seed(42)

test_df <- test_df %>% 
  mutate(Group = sample(c("Control","Treatment"),n(),replace = TRUE, prob = c(0.5,0.5)))

table(test_df$Group)

#Stimulation to Frequency and Monetary values in Treatment Group
#20% increase in Frequency 
#15% increase in Monetary

test_df <- test_df %>%
  mutate(Stimulated_Frequency = ifelse(Group == 'Treatment', Frequency * 1.2, Frequency),
         Stimulated_Monetary = ifelse(Group == 'Treatment', Monetary * 1.15, Monetary))

View(test_df)

#Two Sample T-Test

test_frequency <- t.test(Stimulated_Frequency ~ Group, data = test_df)
test_Monetary <- t.test(Stimulated_Monetary ~ Group, data = test_df)

print(test_frequency)
print(test_Monetary)

#P value greater than 0.05 signifies that the stimulated increase in frequency and monetary impacts the purchase frequency
 

#Chi-Square Test
#H0: Group and Churn_Indicator are Independent
#H1: Group and Churn_Indicator are Dependent

# Create a contingency table
contingency_table <- table(test_df$Group, test_df$Churn_indicator)
print(contingency_table)

chi_square_test <- chisq.test(contingency_table)

# Print the results
print(chi_square_test)

#P value is greater than 0.05 signifying that group and churn_indicator are independent.


ggplot(test_df, aes(x=Group, y=Stimulated_Frequency, fill = Group)) +
  geom_boxplot() +
  labs(title="Stimulated Purchase Frequency by Group", x='Group', y='Purchase Frequency') +
  theme_minimal()

avg_monetary <- test_df %>%
  group_by(Group) %>%
  summarise(Average_Monetary = mean(Stimulated_Monetary))


ggplot(avg_monetary, aes(x=Group, y=Average_Monetary, fill = Group)) +
  geom_bar(stat="identity") +
  labs(title="Average Monetary by Group", x="Group", y="Average Monetary") +
  theme_minimal()
  