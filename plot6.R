## PLOT 6 - Plot emissions from motor vehicle in Baltimore

library(ggplot2)

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Get the scc for motor vehicle sources (including motorcycles)
pattern <- "motor vehicle"
scc <- SCC$SCC[grep(pattern, SCC$SCC.Level.Three, ignore.case = TRUE)]

# Create a new dataframe for Baltimore and LA County motor vehicle emissions
idx <- (NEI$SCC %in% scc) & ((NEI$fips=="24510")|(NEI$fips=="06037"))
df <- NEI[idx,]
df$fips[df$fips=="06037"] <- "LA"
df$fips[df$fips=="24510"] <- "Baltimore"
names(df)[names(df)=="fips"] <- "County"

# Aggregate dataframe 
agg <- aggregate(Emissions ~ year + County, data=df, sum)

# Plot
png("plot6.png")
g <- ggplot(agg, aes(as.numeric(year), Emissions, color=County))
g <- g + geom_point() + geom_line()
g <- g + labs(x="Year", y="Emissions (tons)") + ggtitle("Total Emission from Motor Vehicles by City")
g
dev.off()
