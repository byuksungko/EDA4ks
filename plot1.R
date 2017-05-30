# question 1
NEI <- readRDS("C:/Users/DELL/Desktop/R/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/DELL/Desktop/R/Source_Classification_Code.rds")

aggTotals <- aggregate(Emissions ~ year,NEI, sum)


png(filename='C:/Users/DELL/Desktop/R/plot1.png')

barplot(
  (aggTotals$Emissions)/10^6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
)

dev.off()





