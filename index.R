# Analysis of ELL data for Alia
# Mon. Mar. 12th

# Columns to analyze:
### Average county-wide (from the whole spreadsheet) and district-wide passing rates for each category:
### General campus
### Transitional early-exit bilingual
### Transitional late-exit bilingual
### Two-way dual language
### One-way dual language
### ESL content
### ESL pull-out
### Total ELL
### 
### The difference between general passing rate and ELL passing rate at each campus
### 
### For high schools: difference between overall grad rate and ELL grad rate at each campus.

install.packages("httr")
install.packages("readxl")

# import data:
library("httr")
library("readxl")

GET("https://query.data.world/s/pKh8NrP-KD7Rk2yrqh7pn4C5gWmd1s", write_disk(tf <- tempfile(fileext = ".xlsx")))
ellData <- read_excel(tf)
rm(tf)
