//Estimate the parameters of a beta distribution
data {
  int N;                          //number of data points
  real<lower=0,upper=1> y[N];     //observed data values
}
parameters {
  real<lower=0> alpha;            //alpha > 0 is shape parameter 1
  real<lower=0> beta;             //beta > 0 is shape parameter 2
}
model {
  alpha ~ normal(0,20);          //half-normal prior for alpha
  beta  ~ normal(0,20);          //half-normal prior for beta
  y ~ beta(alpha,beta);          //conditional beta likelihood given alpha and beta
}
