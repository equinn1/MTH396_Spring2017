//Estimate the parameter of a Poisson distibution
data {
  int N;                    //sample size
  int<lower=0> y[N];        //y values: integers, constrained to be nonnegative by <lower=0>
  real prior_alpha;         //prior for shape parameter 1 for beta prior
  real prior_beta;          //prior for shape parameter 2 for beta prior
}
parameters {
  real<lower=0,upper=1> p;  //parameter is constrained to be in (0,1)
}
model {
  p ~ beta(prior_alpha,prior_beta);  //beta prior with given shape parameters
  y ~ bernoulli(p);          //Bernoulli likelihood with parameter p
}
