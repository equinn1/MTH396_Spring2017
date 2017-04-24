//Simple regression model
data {
  int N;               //sample size
  vector[N] y;         //y data values
  vector[N] x;         //x data values
}
parameters {
  real beta[2];           //intercept and slope
  real<lower=0> sigma;    //standard error
}
model {
  beta ~ normal(0,100);   //normal priors for intercept and slope
  sigma ~ cauchy(0,10);   //half-cauchy prior for sigma 

  y ~ normal(beta[1]+beta[2]*x,sigma*x/100.0);   //model normal with parameters (mu,sigma) 
}
generated quantities{
  vector[N] y_pred;
  vector[N] y_fitted;
  
  for (i in 1:N){
    y_pred[i]   = normal_rng(beta[1]+x[i]*beta[2],sigma*x[i]/100.0);
    y_fitted[i] = beta[1]+x[i]*beta[2];
  }
}

