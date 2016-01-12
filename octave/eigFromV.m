d = 0.01
n = 1000

x0 = -(n-1)/2*d
x1 = (n-1)/2*d

xs = 100

res = ones(xs,2);

for i = 1:xs
  lambda = i*1.0/xs;
  x = linspace(x0, x1, n);

  v = lambda * x.^4;

  H = -1.0/(2*d^2)*(diag(-2*ones(n,1)) + diag(ones(n-1,1),1) + diag(ones(n-1,1),-1)) + diag(v);

  res(i,1) = lambda;
  res(i,2) = lambda**(1.0/3)*eig(H)(1);
end

res

save eigenvalues.dat res
