# Run the crazy model

N = 10

sp_mat = matrix(0, nrow=N+2, ncol=N+2)

colnames(sp_mat) = c(paste0("Sp", seq(1,N)), "Iorg", "Det")
rownames(sp_mat) = c(paste0("Sp", seq(1,N)), "Iorg", "Det")

sp_mat

sp_bio = c(1,1,rep(0, N-2),10,10)
names(sp_bio) = c(paste0("Sp", seq(1,N)), "Iorg", "Det")

sp_mat["Sp1", "Iorg"] = 0.5
sp_mat["Det", "Sp1"] = 0.5
sp_mat["Sp2", "Det"] = 0.5
sp_mat["Iorg", "Sp2"] = 0.5
diag(sp_mat) = 1 - colSums(sp_mat)

rowSums(sp_mat)
  
time = 100

sp_mat_save = matrix(NA, nrow=time, ncol= N+2)

for(i in 1:time){
  invader = names(which(sp_bio==0)[1])
  resident = names(which(sp_bio>0))
  sp_mat[invader,resident] = runif(length(resident))
 
   
}

# Some other crazy model below

## some extra crazy model
