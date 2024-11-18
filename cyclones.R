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
cyclones$category_code           ## category code values
cyclones$category_name           ## category name values
cyclones$name                    ## cyclone name values
cyclones$rsmc_name               ## cyclone rsmc name values
cyclones$start                   ## cyclone start date and time values
cyclones$end                     ## cyclone end date and time values
cyclones$pressure                ## pressure values
cyclones$speed                   ## speed values


### The values of the variables using the index operator ----

cyclones[ , "year"]              ## year values
cyclones[ , 1]                   ## year values

cyclones[ , "category_code"]     ## category code values
cyclones[ , 2]                   ## category code values

cyclones[ , "category_name"]     ## category name values
cyclones[ , 3]                   ## category name values

cyclones[ , "name"]              ## cyclone name values
cyclones[ , 4]                   ## cyclone name values

cyclones[ , "rsmc_name"]         ## cyclone rsmc name values
cyclones[ , 5]                   ## cyclone rsmc name values

cyclones[ , "start"]             ## start date and time values
cyclones[ , 6]                   ## start date and time values

cyclones[ , "end"]               ## end date and time values
cyclones[ , 7]                   ## end date and time values

cyclones[ , "pressure"]          ## pressure values
cyclones[ , 8]                   ## pressure values

cyclones[ , "speed"]             ## speed values
cyclones[ , 9]                   ## speed values


## Task 3: Summarise and describe the dataset graphically ----


### Boxplot ----

#### Boxplot of speed ----
boxplot(cyclones$speed)               ## Basic boxplot with default specifications

boxplot(                              
  x = cyclones$speed,
  main = "Boxplot of cyclone speed",  ## main - argument to specify plot title
  ylab = "Speed in kph"               ## ylab - argument to specify y-axis label
)

boxplot(                              
  x = cyclones$speed,
  main = "Boxplot of cyclone speed",  
  ylab = "Speed in kph",
  border = "darkblue",                ## border - argument to specify outline colour
  col = "lightblue"                   ## col - argument to specify fill colour
)


#### Boxplot of speed by year ----
boxplot(speed ~ year, data = cyclones)         ## Basic boxplot of speed by year
                                               ## using formula method

boxplot(                                   
  speed ~ year,                                ## Formula method syntax using ~
  data = cyclones,
  main = "Boxplot of cyclone speed by year",   ## boxplot title
  xlab = "Year",                               ## x-axis label
  ylab = "Speed in kph"                        ## y-axis label
)

boxplot(                                   
  speed ~ year,                            
  data = cyclones,
  main = "Boxplot of cyclone speed by year",
  xlab = "Year",
  ylab = "Speed in kph",
  border = "darkblue",                         ## outline colour
  col = "lightblue"                            ## fill colour
)


### Histogram ----

#### Histogram of pressure ----
hist(cyclones$pressure)                        ## Basic histogram

hist(
  cyclones$pressure,
  main = "Histogram of cyclone pressure",      ## main - argument for plot title
  xlab = "Pressure in hPa"                     ## xlab - argument for x-axis label
)

hist(
  cyclones$pressure,
  main = "Histogram of cyclone pressure",
  xlab = "Pressure in hPa",
  border = "darkblue",                         ## border - argument for outline colour
  col = "lightblue"                            ## col - argument for fill colour
)


#### Histogram of pressure grouped by speed (one plot per group) ----

##### Histogram of pressure for cyclones with speed < 100 kph ----
hist(
  cyclones$pressure[cyclones$speed < 100],
  main = "Histogram of cyclone pressure with speed < 100 kph",
  xlab = "Pressure in hPa"
)


##### Histogram of pressure for cyclones with speed >= 100 kph ----
hist(
  cyclones$pressure[cyclones$speed >= 100],
  main = "Histogram of cyclone pressure with speed >= 100 kph",
  xlab = "Pressure in hPa"
)


#### Histogram of pressure grouped by speed (one on top of each other) ----

##### Plot histogram of pressure for speeds < 100 ----
hist(
  cyclones$pressure[cyclones$speed < 100],     ## Index pressure by speed < 100
  border = "darkgreen",                        ## outline colour to darkgreen
  col = "lightgreen",                          ## fill colour to lightgreen
  main = "Histogram of cyclone pressure",
  xlab = "Pressure in hPa",
  xlim = c(880, 1020)                          ## set x limits of plot to range 
)                                              ## of pressure values

##### Add histogram of pressure for speeds >= 100 ----
hist(
  cyclones$pressure[cyclones$speed >= 100],    ## Index pressure by speed >= 100
  border = "darkblue",                         ## outline colour to darkblue
  col = "lightblue",                           ## fill colour to lightblue
  add = TRUE                                   ## add this plot to previous plot
)

##### Add a legend ----
legend(
  x = "topleft",                               ## set position of legend
  legend = c("Speed < 100", "Speed >= 100"),   ## add labels to legend
  fill = c("lightgreen", "lightblue"),         ## add legend colours
  bty = "n",                                   ## remove legend box
  cex = 0.8,                                   ## set size of legend text
  y.intersp = 0.8                              ## set y space between text
)


#### Histogram of pressure grouped by speed (side-by-side) ----

par(mfcol = c(1, 2))                           ## split plotting window to two
                                               ## 1 row and 2 columns side-by-side
hist(
  cyclones$pressure[cyclones$speed < 100],
  main = NULL,
  xlab = "Speed < 100 kph",
  ylim = c(0, 30)
)

hist(
  cyclones$pressure[cyclones$speed >= 100],
  main = NULL,
  xlab = "Speed >= 100 kph",
  ylim = c(0, 30)
)

par(mfcol = c(1, 1))                           ## Return plotting window back to 1 x 1 

title(main = "Histogram of cyclone pressure")  ## Set title for side-by-side plot


### Q-Q plot ----

#### Q-Q plot for pressure ----
qqnorm(cyclones$pressure)
qqline(cyclones$pressure)

#### Q-Q plot for speed ----
qqnorm(cyclones$speed)
qqline(cyclones$speed)
