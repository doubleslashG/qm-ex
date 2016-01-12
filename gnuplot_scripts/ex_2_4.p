f(x) = A * x**alpha

fit f(x) "eigenvalues.dat" via A, alpha

plot "eigenvalues.dat", f(x)
