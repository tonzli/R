## PLOT 4 - Plot total and mean emission from coal-combustion related sources for each year.

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Regex pattern - match any instances of coal...comb or comb...coal
pattern <- "[Cc]oal.*[Cc]omb|[Cc]omb.*[Cc]oal"
scc <- SCC$SCC[grep(pattern, SCC$Short.Name)]
idx <- NEI$SCC %in% scc

# Create dataframe contain year and emission for coal-combustion related sources
coalNEI <- data.frame(year=NEI$year[idx], emission=NEI$Emissions[idx])

coalMean <- with(coalNEI, tapply(emission, year, mean))
coalTotal <- with(coalNEI, tapply(emission, year, sum))

png("plot4.png")
par(mfrow=c(2,1))
plot(names(coalMean), coalMean, main="Average Emission from Coal-Combustion Sources", xlab="Year", ylab="Emission (tons)")
plot(names(coalTotal), coalTotal, main="Total Emission from Coal-Combustion", xlab="Year", ylab="Emission (tons)")
dev.off()
