## Script to convert online format of teams data to structure needed 
## for the website

library(googlesheets)

x <- gs_title("2018/19")
db <- gs_read(x, ws = "teams")

ws <- read.csv("../_data/teams.csv")

names(db)
names(ws)

## Create two columns we need
db$training <- paste(db$trainingVenue, db$trainingDay, db$trainingTime)
db$name <- db$Team

## Check for missing names
names(ws)[!names(ws) %in% names(db)]

xx <- db[, names(ws)]

## Convert NAs to empty characters
for (j in 1:ncol(xx)) {
  i <- is.na(xx[, j])
  xx[i, j] <- ""
}


i <- xx$homeground == ''
xx <- xx[!i, ]

i <- xx$training == "None NA NA"
xx$training[i] <- ""


write.csv(xx, file = "../_data/teams.csv", row.names = FALSE)
