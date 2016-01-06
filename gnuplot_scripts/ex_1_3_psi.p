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

set yrange [-2.5:2.5]
set ytics ("0" 0)

set xlabel "x/L"

set terminal postscript color eps

plot [-1:1] psi_e(x*L) w l lt 1 title "Ground state", psi_o(x*L) w l lt 3 title "First excited state"

set output "../img/ex_1_3_psi.eps"

replot 0 w l lw 3 lt 0 notitle
