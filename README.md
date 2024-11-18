# Tropical Depressions, Storms, and Typhoons Oh My! - Solutions

<!-- badges: start -->
![License for code](https://img.shields.io/badge/license_for_code-GPL3.0-blue)
![License for text](https://img.shields.io/badge/license_for_writing-CC_BY_4.0-blue)
[![deploy document](https://github.com/OxfordIHTM/solutions-depressions-storms-and-typhoons-oh-my/actions/workflows/publish.yml/badge.svg)](https://github.com/OxfordIHTM/solutions-depressions-storms-and-typhoons-oh-my/actions/workflows/publish.yml)
[![DOI](https://zenodo.org/badge/889816501.svg)](https://zenodo.org/badge/latestdoi/889816501)
<!-- badges: end -->


This is a solutions repository for the exercise on **Tropical Depression, Storms, and Typhoons Oh My!** in the [Open and Reproducible Science in R](https://oxford-ihtm.io/teaching) module of the [MSc in International Health and Tropical Medicine](https://www.tropicalmedicine.ox.ac.uk/study-with-us/msc-ihtm).

<br/>

## Instructions for the assignment

The following tasks have been setup to help students get familiar with the basics of R and performing basic operations and functions in R.

The students are expected to go through the tasks and appropriately write R code/script to fulfill the tasks and/or to answer the question/s being asked within the tasks. R code/script should be written inside a single R file named `cyclones.R` and saved in the project’s root directory.

<br/>

## The dataset

Oceans and seas significantly impact continental weather, with evaporation from the sea surface driving cloud formation and precipitation. Tropical cyclones, warm-core low-pressure systems, form over warm oceans where temperatures exceed 26°C, precipitated by the release of latent heat from condensation. These cyclones, known by various names depending on the region, have organised circulations and develop primarily in tropical and subtropical waters, except in regions with cooler sea surface temperatures and high vertical wind shears. They reach peak intensity over warm tropical waters and weaken upon landfall, often causing extensive damage before dissipating.

The Philippines frequently experiences tropical cyclones because of its geographical position. These cyclones typically bring heavy rainfall, leading to widespread flooding, as well as strong winds that cause significant damage to human life, crops, and property. Data on cyclones are collected and curated by the Philippine Atmospheric, Geophysical, and Astronomical Services Administration (PAGASA).

A dataset in comma-separated value (CSV) format called `cyclones.csv` can be found inside the `data` folder of this repository. This dataset contains records of every cyclone that entered the Philippine area of responsibility from 2017 to 2021. The dataset has the following variables/fields:

**Variable/Field** | **Description**
:---               | :---
year               | Year
category_code      | Tropical cyclone category code
category_name      | Tropical cyclone category name
name               | Name given to the tropical cyclone by Philippine authorities
rsmc_name          | Name given to the tropical cyclone by RSMC
start              | Date and time at which cyclone enters Philippine waters
end                | Date and time at which cyclone leaves Philippine waters
pressure           | Maximum central pressure in hPa
speed              | Maximum sustained wind speed in km/h

<br/>

## Task 1: Reading data into R

The first step in any data analysis workflow in R is to read the dataset you want to work with into R.

So, the question to ask yourself is:

How will you read and load the `cyclones.csv` dataset into R?

For this task, we will learn how to:

Use the functions `read.table()` and `read.csv()` to read text-based, tabular datasets.

To find out more about using specific functions or to get help with the syntax, use the `?` command followed by the name of the function in the R console. So, if you want to get help information about the `read.table()` or `read.csv()` function, use:

```R
?read.table
```

```R
?read.csv
```

<br/>

## Task 2: Describing the data structure
Being able to understand the data structure of a dataset helps us make good decisions on how to work with data.

There are several R functions that gives us the characteristics and structure of a dataset.

Using R, can you describe the structure of the data? Specifically, can you describe:

* The shape of the data

* The number of records in the data

* The variables of the data

* The number of variables in the data

* The values of variables in the data

<br/>

## Task 3: Summarise and describe the dataset graphically

### Boxplot

We can summarise the values of the variable graphically. A box and whisker plot is a method for graphically showing the central tendency, the dispersion, and the skewness of numerical data.

Using R, can you describe:

* the `speed` variable?

* the `speed` variable grouped by the `year` the tropical cyclone came into the Philippine area of responsibility?

### Histogram

We can describe the distribution of the values of numerical/continuous variables graphically. A histogram is a plot that represents the distribution of numerical data and can be used to visually detect whether a variable is normally distributed.

Using R, can you show the distribution of:

* the `pressure` variable?

* the `pressure` variable grouped into cyclones with speed of 100 kph and above and cyclones with speed less than 100 kph.

### Quantile-quantile plots (Q-Q plots)

We can also check the assumption of normality of numerical/continuous data graphically using quantile-quantile plots or Q-Q plots.

Using R, can you show the Q-Q plot for:

* the `pressure` variable

* the `speed` variable

<br/>

## Pop Quiz

A pop quiz was given to the students on the 12th of November 2024 as part of this exercise. The questions to the pop quiz were:

### Question 1
How many cyclones entered the Philippines in 2017?


### Question 2
What is the mean cyclone speed of the cyclones that hit the Philippines in 2019?


### Question 3
What is the name of the cyclone with the lowest pressure in 2020?


### Question 4
How many cyclones have a speed of less than 100 kph and a pressure greater than 1000 hPa?

<br/>

## Solutions

A solutions script named `cyclones.R` is found in this repository. The script provides various possible solutions for each of the tasks above.

A solutions script named `pop_quiz.R` is found in this repository. The script provided various possible solutions for the pop quiz given on the 12th of November 2024.

The solutions can also be viewed as an HTML document that shows the code solutions alongside text that provides step-by-step explanation of what the solution is doing. The HTML document can be read here.

<br/>

## License

All of the written material is made available under the Creative
Commons - Attribution - NonCommercial 4.0 International license (CC-BY-NC-4.0),
while any code is made available under the GNU General Public License Version 3.0 license (GPL-3.0).
