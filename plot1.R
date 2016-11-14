## PLOT 1 - Total PM2.5 emission from all sources for each of the years 1999,
##          2002, 2005 and 2008.

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Sum up total emission by year
total <- tapply(NEI$Emissions, NEI$year, sum)

# Plot graph
png("plot1.png")
plot(names(total), 
     total,
     main="Total PM2.5 Emission by Year",
     xlab="Year", 
     ylab="PM2.5 Emission (tons)",
     xaxt="n")
axis(1, at=names(total), labels=names(total))
dev.off()
