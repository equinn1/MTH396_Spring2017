//Estimate the parameter of an exponential distribution
data {
  real prior_max;                //upper bound for uniform prior on [0,prior_max]
  real<lower=0> y;               //single data point
}
parameters {
  real<lower=0> theta;           //parameter theta is constrained to be positive
}
model {
  theta ~ uniform(0,prior_max);  //prior for theta is uniform on [0,u] 
  y ~ exponential(theta);        //Bernoulli likelihood given parameter theta
}
