a = 1
L = 3*a
m = 1
h_bar = 1
V_0 = 1

k1(E) = sqrt(2*m+(V_0-E))/h_bar
k2(E) = sqrt(2*m*E)/h_bar

left(E) = k1(E)*tanh(k1(E)*a)
right(E) = k2(E)/tan(k2(E)*(a-L))

left_odd(E) = k1(E)/tanh(k1(E)*a)
right_odd(E) = k2(E)/tan(k2(E)*(a-L))

set yrange [0:3]
unset ytics
set xtics

set xlabel "Energy (A.U.)"

set samples 5000
set termopt enhanced

set terminal postscript color eps

plot [0:1] right(x) w l lw 3 lt 0 title "f(k_2)"
replot left(x) w l lt 1 title "Even solutions"

set output "../img/ex_1_3_ground_energies.eps"

replot left_odd(x) w l lt 3 title "Odd solutions"
