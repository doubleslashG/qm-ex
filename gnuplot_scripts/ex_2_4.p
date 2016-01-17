E_num = 0.66798
E_pert = 1
E_var = 3*6**(1./3)/8

set termopt enhanced
set terminal postscript eps color
set key left Left reverse
set samples 5000

f_num(x) = E_num*x**(1.0/3)
f_var(x) = E_var * x**(1.0/3)
f_pert(x) = E_pert * x**(1.0/3)

set xlabel "{/Symbol l}"
set ylabel "E_0"

set output "../img/ex2_4_comparison.eps"

plot [0:1] f_num(x) title "Numerical solution", f_var(x) title "Variational method", f_pert(x) title "Perturbative solution"
