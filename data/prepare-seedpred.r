widedata <- read.csv('seedpredwide.csv')

## Reshape data into a more useable form
library(reshape)
long <- recast(widedata, formula=... ~ ., id.var=c('station','dist','species'))

## Change name of automatically created columns
names(long)[names(long)=='variable'] <- 'date'
names(long)[names(long)=='(all)'] <- 'seeds'

## Convert date column into Date type
long$date <- as.Date(long$date, format='X%Y.%m.%d')
dates <- unique(long$date)

ndates <- length(dates)
mindate <- min(dates)
maxdate <- max(dates)

save(ndates, mindate, maxdate, file='seedpred-summary.rdata')

