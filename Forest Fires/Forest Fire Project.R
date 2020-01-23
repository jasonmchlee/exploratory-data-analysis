library(readr)
library(ggplot2)
library(dplyr)
library(purrr)

#read in file
fires <- read.csv("forestfires.csv")
head(fires)

#group fires by month
fires_month <- fires %>%
  group_by(month) %>%
  summarize(total_fires = n())

#create month factor to get right order of months
fires$month <-factor(fires$month, 
                       levels = c("jan", "feb", "mar", "apr", "may", "jun",
                                  "jul", "aug", "sep", "oct", "nov", "dec"))

#create day factor to get right order of days
fires$day <-factor(fires$day, 
                   levels = c("mon","tue","wed",
                              "thu","fri","sat","sun"))

#create bar chart for number of forest fires per month
ggplot(data = fires_month) +
  aes(x = month, y = total_fires) +
  geom_bar(stat="identity") +
  theme(panel.background = element_rect(fill="white"))+
  labs(title="Number of forest fires occuring during each month")


#group fires by day of the week
fires_day <- fires %>%
  group_by(day) %>%
  summarize(total_fires = n())


# create bar chart for number of fires per day of the week
ggplot(data = fires_day) +
  aes(x = day, y = total_fires) +
  geom_bar(stat="identity") +
  theme(panel.background = element_rect(fill = "white")) +
  labs(title = "Number of forest fires occurring on each day of the week")


#Write a function to create box plots for several variables
create_boxplots <- function(x,y) {
  ggplot(fires) +
  aes_string(x= x, y=y) +
  geom_boxplot()+
  theme(panel.background = element_rect(fill = "white")) +
  labs(title=y)
}

#Assign X and Y variable names
x_var_month <- names(fires)[3] # names for the months
x_var_days <- names(fires)[4] # names for the days
y_var <- names(fires)[5:12] # names for all columns to be used for boxplots

#use map2() function to apply function to variables

#month_boxplots

month_boxplots <- map2(x_var_month, y_var, create_boxplots)
month_boxplots

#day_boxplots

day_boxplots <- map2(x_var_days, y_var, create_boxplots)
day_boxplots

# creat scatter plots to learn about relationships between the area burned and the other variables

create_scatter <- function(x,y) {
  ggplot(fires) +
  aes_string(x=x, y=y) +
  geom_point()+
  theme(panel.background = element_rect(fill = "white")) +
  labs(title=y)
}

x_var_scatter <- names(fires)[5:12] # names for the days
y_var_scatter <- names(fires)[13] # names for all columns to be used for boxplots

#use map2() on the scatter

scatter_plots <- map2(x_var_scatter, y_var_scatter,create_scatter)
scatter_plots