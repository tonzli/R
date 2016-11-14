## PLOT 3 - For each Source Type, plot the total emission by year for Baltimore

library(ggplot2)

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Aggregate baltimore emissions by year and source type
baltimore <- aggregate(NEI$Emissions[NEI$fips==24510], 
                       by=list(year=NEI$year[NEI$fips==24510], 
                               type=NEI$type[NEI$fips==24510]), 
                       sum)

# Plot lines for each source type
png("plot3.png")
qplot(year, x, data=baltimore, col=type, pch=type, main="Total Emission by Source Type") + geom_line() + labs(x="Year", y="Emission (Tons)")
dev.off()

