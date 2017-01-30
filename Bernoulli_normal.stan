//Estimate the parameter of a Bernoulli distribution
data {
  int N;                         //number of data points
  int<lower=0,upper=1> y[N];     //observed data values
  real<lower=0> prior_sd;        //std deviation for half-normal prior
}
parameters {
  real<lower=0,upper=1> p;       //parameter p is constrained to be in [0,1]
}
model {
  p ~ normal(0,prior_sd);        //prior for theta is half-normal 
  y ~ bernoulli(p);              //conditional Bernoulli likelihood given parameter p
}
