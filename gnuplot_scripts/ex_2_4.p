f(x) = A * x**alpha

fit f(x) "../octave/eigenvalues.dat" via A, alpha

E_var = 3*6**(-1./3)/8
E_pert = 1

set termopt enhanced

f_var(x) = E_var * x**(1.0/3)
f_pert(x) = E_pert * x**(1.0/3)
plot "eigenvalues.dat" title "Numerical values", f(x) title sprintf("%.3fx^{%.3f}", A, alpha)
replot f_var(x) title "f_{var}", f_pert(x) title "f_{pert}"
