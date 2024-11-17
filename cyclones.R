# Tropical Depressions, Storms, and Typhoons Oh My! - Solutions ----------------


## Task 1: Read cyclones.csv dataset ----

### using read.csv() function ----
cyclones <- read.csv(file = "data/cyclones.csv")


### using read.table() function ----
cyclones <- read.table(file = "data/cyclones.csv", header = TRUE, sep = ",")


## Task 2: Describing the data structure ----


### Shape of the cyclones dataset using the class() function ----
class(cyclones)


### Number of records of the data using the nrow() function ----
nrow(cyclones)


### The variables of the data using names() function ----
names(cyclones)


### The number of variables of the data using the ncol() function ----
ncol(cyclones)


### The number of variables using the length() and names() function ----
length(names(cyclones))


### The values of the variables using the $ operator ----

cyclones$year                    ## year values
cyclones$pressure                ## pressure values
cyclones$speed                   ## speed values


### The values of the variables using the index operator ----

cyclones[ , "year"]              ## year values
cyclones[ , 1]                   ## year values

cyclones[ , "pressure"]          ## pressure values
cyclones[ , 8]                   ## pressure values

cyclones[ , "speed"]             ## speed values
cyclones[ , 9]                   ## speed values


## Task 3: Summarise and describe the dataset graphically ----


### Boxplot ----

#### Boxplot of speed ----
boxplot(cyclones$speed)          ## Basic boxplot with default specifications

boxplot(                         ## Boxplot with title and y-axis label
  x = cyclones$speed,
  main = "Boxplot of cyclone speed",
  ylab = "Speed in kph"
)

boxplot(                         ## Boxplot with different border and fill colour
  x = cyclones$speed,
  main = "Boxplot of cyclone speed",
  ylab = "Speed in kph",
  border = "darkblue",
  col = "lightblue"
)


#### Boxplot of speed by year ----
boxplot(speed ~ year, data = cyclones)     ## Basic boxplot of speed by year

boxplot(                                   ## Boxplot with title, x, and y axis
  speed ~ year,                            ## labels
  data = cyclones,
  main = "Boxplot of cyclone speed by year",
  xlab = "Year",
  ylab = "Speed in kph"
)

boxplot(                                   ## Boxplot with different border and
  speed ~ year,                            ## fill colour
  data = cyclones,
  main = "Boxplot of cyclone speed by year",
  xlab = "Year",
  ylab = "Speed in kph",
  border = "darkblue",
  col = "lightblue"
)


### Histogram ----