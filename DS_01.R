#loading necessary libraries
library(ggplot2)
library(dplyr)
library(readr)

#loading the dataset
Titanic_Dataset <- read_csv("~/Titanic-Dataset.csv")
print(Titanic_Dataset)

#bar chart for gender distribution
gender_distribution <- Titanic_Dataset %>%
  filter(!is.na(Sex)) %>%
  count(Sex)

ggplot(gender_distribution, aes(x = Sex, y = n, fill = Sex)) +
  geom_bar(stat = "identity") +
  labs(title = "Gender Distribution on the Titanic", x = "Gender", y = "Count") +
  theme_minimal()

# Histogram for Age Distribution
ggplot(Titanic_Dataset, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", na.rm = TRUE) +
  labs(title = "Age Distribution on the Titanic", x = "Age", y = "Frequency") +
  theme_minimal()

