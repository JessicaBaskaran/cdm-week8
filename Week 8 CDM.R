install.packages("randomNames")
library("randomNames")
library("tidyverse")
library("dplyr")

set.seed(1)
df <- data.frame(randomNames (500,
                              gender,
                              which.names="both",
                              name.order="first.last",
                              name.sep=", ",
                              sample.with.replacement=TRUE,
                              return.complete.data=TRUE))

set.seed(1)
ID <- floor(runif(500, min=10000, max=20000))
df['Sample ID'] <- ID
df['ethnicity'] <- NULL
age <- round(runif(500, min=1, max=99))
df['Age'] <- age
df['Country'] <- selected_country
df['City'] <- selected_city

df <- df[c("Sample ID", "first_name", "last_name", "Age", "gender", "Country", "City")]