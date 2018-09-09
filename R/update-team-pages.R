## Script to convert online format of teams data to structure needed 
## for the website

## Set working directory to source location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(googlesheets)

## Link to the spreadsheet
x <- gs_title("2018/19")
## Get the teams sheet from the database
db <- gs_read(x, ws = "teams")

## Get the csv file from the website
ws <- read.csv("../_data/teams.csv")

## Create two columns we need
db$training <- paste(db$trainingVenue, db$trainingDay, db$trainingTime, sep = ", ")
db$name <- db$Team

## Check for missing names
stopifnot(length(names(ws)[!names(ws) %in% names(db)]) == 0)

xx <- db[, names(ws)]

## Convert NAs to empty characters
for (j in 1:ncol(xx)) {
  i <- is.na(xx[, j])
  xx[i, j] <- ""
}

## Drop rows without a home ground (these will be spurious rows)
i <- xx$homeground == ''
xx <- xx[!i, ]

## Clean up the training info
i <- xx$training == "None, NA, NA"
xx$training[i] <- ""

write.csv(xx, file = "../_data/teams.csv", row.names = FALSE)
