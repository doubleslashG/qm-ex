% step size
d = 0.01

% number of steps
n = 5000

% extremes
y0 = -(n-1)/2*d
y1 = (n-1)/2*d

% coordinates
y = linspace(y0, y1, n);

% potential
v = y.^4;

% hamiltonian
H = -1.0/(2*d^2)*(diag(-2*ones(n,1)) +
    diag(ones(n-1,1),1) +
    diag(ones(n-1,1),-1)) +
    diag(v);

% first eigenvalue of H
eig(H)(1)
