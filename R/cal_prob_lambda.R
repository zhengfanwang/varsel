cal_prob <- function(simu_res,num_simu){
  prob <- matrix(NA,ncol=cov_for_each,nrow = num_simu)
  for(i in 1:num_simu){
    for(j in 1:cov_for_each){
      prob[i,j] <- select_covar(simu_res$lambda[,i,],j)    
    }
  }
  return(prob)
}