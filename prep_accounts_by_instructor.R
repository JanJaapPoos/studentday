# Install package
install.packages('SBRUV', repos = c('https://janjaappoos.r-universe.dev', 'https://cloud.r-project.org'), dependencies = T)

# Load package
library(SBRUV)

# setwd
setwd("C:\\Users\\cursistxxx\\SBRUV")

# Get the ffmpeg software 
getFfmpeg()

# give names for two directories: one for calibration footage, and one for observation footage
cal_dir <- "calibration"
obs_dir <- "observations"

# create the two directories defined above using te dir.create() function in R
dir.create(cal_dir)
dir.create(obs_dir)

#prep distances function
distances <- function (shapes) {
   cat("Distances between snout and caudal fin landmarks in ",shapes$unit[1]," \n") 
   print(apply(shapes$landmarks[c("snout", "caudal_fin"), , ], 3, distancePointToPoint ))
}

