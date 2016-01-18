N_0 = 1.0
m = 1.0
h_bar = 1.0
omega = 1.0

alpha = sqrt(m*omega/h_bar)

a = 1.0
t = 0.0

psi2(x) = N_0**2.0*exp(-alpha**2.0*a**2.0*(1.0+cos(2.0*omega*t))/2.0)*exp(-(alpha*x)**2.0)*exp(2.0*a*alpha**2*x*cos(omega*t))

s = 1000

do for [i=0:s] {
  t = i*0.02
  plot [-5:5] psi2(x)
}
