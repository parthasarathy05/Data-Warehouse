data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)
bin_size <- 5

bin_means <- tapply(data, ceiling(seq_along(data)/bin_size), mean)

smoothed_data_bin_mean <- rep(bin_means, each = bin_size)[1:length(data)]
print(smoothed_data_bin_mean)

bin_medians <- tapply(data, ceiling(seq_along(data)/bin_size), median)
smoothed_data_bin_median <- rep(bin_medians, each = bin_size)[1:length(data)]
print(smoothed_data_bin_median)


bin_boundaries <- seq(min(data), max(data) + bin_size, by = bin_size)

print("Smoothing by Bin Boundaries:")
print(bin_boundaries) 
