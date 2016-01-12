x0 = -1
x1 = 1
n = 100

xs = 1000

res = ones(xs,2);

for i = 1:xs
  lambda = i*1.0/xs;
  x = linspace(x0, x1, n);

  v = lambda * x.^4;

  d = (x1-x0)/n;

  H = -1.0/(2*d^2)*(diag(-2*ones(n,1)) + diag(ones(n-1,1),1) + diag(ones(n-1,1),-1)) + diag(v);

  res(i,1) = lambda;
  res(i,2) = eig(H)(1);
end

res

save eigenvalues.dat res
