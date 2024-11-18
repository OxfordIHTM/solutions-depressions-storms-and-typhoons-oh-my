# Pop quiz 12 November 2024 ----------------------------------------------------

## Read the data ----
cyclones <- read.csv("data/cyclones.csv")


## Question 1: How many typhoons entered the Philippines in 2017? ----
nrow(cyclones[cyclones$year == 2017, ])


## Question 2: What is the mean cyclone speed of the cyclones that hit the ----
## Philippines in 2019?
mean(cyclones[cyclones$year == 2019, "speed"])


## Question 3: What is the name of the cyclone with the lowest pressure in 2020? ----
cyclones2020 <- cyclones[cyclones$year == 2020, ]
cyclones2020[cyclones2020$pressure == mean(cyclones2020$pressure), "name"]


## Question 4: How many cyclones have a speed of less than 100 kph and a ----
## pressure greater than 1000 hPA?
nrow(cyclones[cyclones$speed < 100 & cyclones$pressure >= 1000, ])
