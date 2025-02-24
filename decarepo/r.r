# a script to estimate the value of pi using the Monte Carlo calculation

set.seed(0.537916728589)

# random vectors of length 100k
x = runif(100000)
y = runif(100000)

# radius
z = sqrt(x^2 + y^2)

# count the number of points inside the quarter-circle
inside_circle = which(z <= 1)
outside_circle = which(z > 1)
pi_estimate = length(inside_circle) * 4 / length(z)

# print the estimated value of pi
print(paste("Estimated value of pi:", pi_estimate))

# sort the vectors
x_sorted = sort(x)
y_sorted = sort(y)

# make some plots
plot(x[inside_circle], y[inside_circle], xlab="X", ylab="Y", main="Monte Carlo sim")
points(x[outside_circle], y[outside_circle], col='yellow')

# plot sorted vectors
plot(x_sorted, y_sorted, xlab="X (sorted)", ylab="Y (sorted)", main="Sorted Vectors")

