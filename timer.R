library(tictoc)
library(doParallel)
library(purrr)
library(furrr)

maxcores <- 8
Cores <- min(parallel::detectCores(), maxcores)

# Instantiate the cores:
cl <- makeCluster(Cores)

# Next we register the cluster..
registerDoParallel(cl)

# Time the original solution
tic(paste0("Original Solution, ", Cores, " cores"))
source("scripts/Script_Task1.r")
toc()

# Time the parallel loop solution
tic(paste0("Parallel Loop Solution Solution, ", Cores, " cores"))
source("scripts/Script_Task2.r")
toc()

# Time the parallel function solution
tic(paste0("Parallel Function Solution, ", Cores, " cores"))
source("scripts/Script_Task3.r")
toc()