## PLOT 5 - Plot emissions from motor vehicle in Baltimore

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Get the scc for motor vehicle sources (including motorcycles)
pattern <- "motor vehicle"
scc <- SCC$SCC[grep(pattern, SCC$SCC.Level.Three, ignore.case = TRUE)]

# Create a new dataframe for Baltimore motor vehicle emissions
idx <- (NEI$SCC %in% scc) & (NEI$fips=="24510")
baltimore <- NEI[idx,]

# Calculate the total and mean emission
baltimoreTotal <- with(baltimore, tapply(Emissions, year, sum))
baltimoreMean <- with(baltimore, tapply(Emissions, year, mean))

# Plot
png("plot5.png")
par(mfrow=c(2,1))
plot(names(baltimoreMean), baltimoreMean, main="Average Motor Vehicles Emission in Baltimore", xlab="Year", ylab="Emission (tons)")
plot(names(baltimoreTotal), baltimoreTotal, main="Total Motor Vehicles Emission in Baltimore", xlab="Year", ylab="Emission (tons)")
dev.off()

