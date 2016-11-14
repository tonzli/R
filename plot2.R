## PLOT 2 - Plot total emission for each year in Baltimore City

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Sum up total emission in Baltimore by year
baltimore <- tapply(NEI$Emissions[NEI$fips==24510], NEI$year[NEI$fips==24510], sum)

# Plot graph
png("plot2.png")
plot(names(baltimore), 
     baltimore,
     main="Total PM2.5 Emission by Year in Baltimore",
     xlab="Year", 
     ylab="PM2.5 Emission (tons)",
     xaxt="n")
axis(1, at=names(baltimore), labels=names(baltimore))
dev.off()

