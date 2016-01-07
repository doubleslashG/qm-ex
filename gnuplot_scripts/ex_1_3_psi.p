k1 = 1
k2 = 1.1

k2_o = 1.19

a = 1
L = 3*a

psi1_e(x) = cosh(k1*x)
psi2_e(x) = -1.91*sin(k2*(x-L))

psi1_o(x) = sinh(k1*x)
psi2_o(x) = -1.7*sin(k2_o*(x-L))

psi_e(x) = abs(x)<a ? psi1_e(x) : x>a ? psi2_e(x) : psi2_e(-x)
psi_o(x) = abs(x)<a ? psi1_o(x) : x>a ? psi2_o(x) : -psi2_o(-x)

barrier(x) = abs(x)<a ? 1.6 : 0

set yrange [-2.5:2.5]
set ytics ("0" 0)

set xtics ("-L" -1, "-a" -a*1.0/L, "0" 0, "+a" a*1.0/L, "+L" 1)

set termopt enhanced
set terminal postscript color eps

set style fill transparent solid 0.5
set samples 5000

plot [-1:1] barrier(x*L) with filledcurves below notitle lc 9, psi_e(x*L) w l lt 1 title "Ground state"

set label 1 "V_0" at 0,0.5 front

set output "../img/ex_1_3_psi.eps"

replot psi_o(x*L) w l lt 3 title "First excited state"
