# Script to plot year by population for 
# gapminder single country file
# Naupaka Zimmerman naupaka@gmail.com
# February 21, 2015

# Takes one command line argument as input data set
options <- commandArgs(trailingOnly = TRUE)

# load that csv from command line arg
data.in <- read.delim(options[1], sep = "\t")

# Remove notes column if it exists
data.in <- data.in[,1:6]

# Add or overwrite column names to standardize
names(data.in) <- c("country","year","pop","continent","lifeExp","gdpPercap")

# Set silename and plot size for pdf figure 
pdf(paste0(options[1],".pdf"), 7, 5)

# Make a scatterplot, set options
plot(x = data.in$year, 
     y = data.in$pop,
     main = options[1],
     ylab = "Population",
     xlab = "Year",
     cex = 5,
     pch = 20,
     col = "red")

# turn of file device
dev.off()

