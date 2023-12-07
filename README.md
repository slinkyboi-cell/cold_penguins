# Computing Assignment: Reproducible Figures in R
Michaelmas Term 2023 
## Overview
This project is based on question 2 of the 'Reproducible Figures' assignment. It analyses the Palmer Penguins dataset, exploring the relationship between culmen length and culmen depth across the 3 penguin species (Adelie, Chinstrap, and Gentoo). 
This file itself gives instructions on how to use the project files uploaded.

### Main Script 
The main script for the data analysis pipeline can be found as "Reproducible_Figures_Q2.Rmd" OR "Reproducible_Figures_Q2.html". 
It is structured as so:
* Introduction - brief overview regarding loading, cleaning, and exploring the data
* Hypothesis - proposed hypotheses for the chosen question
* Statistical Methods - analysing filtered data for the chosen question via the Pearson correlation coefficient
* Results and Discussion - use of a results figure and discussion of the analysis findings
* Conclusion - brief summary of the explored question using the Palmer Penguins dataset

### Data Folder: Raw and Clean Data
The raw and clean Palmer Penguins datasets can be found in the "Data" folder respectively as:
* penguins_raw.csv - raw dataset
* penguins_clean.csv - cleaned dataset

### Functions Folder: Cleaning and Plotting
The cleaning and plotting files used in this data pipeline analysis can be found in the "Functions" folder respectively as:
* cleaning.R - cleans the raw penguin dataset via cleaning functions such as shortening species names, removing NA values, etc.
* plotting.R - contains the code used to plot the exploratory and results figures (also denoted as Figure 1 and Figure 2 respectively)

### Figures Folder
The figures produced in this project can be found in the "Figures" folder as both png and svg images, where two styles of png images are offered (presentation and report).
