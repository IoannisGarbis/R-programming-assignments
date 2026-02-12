A <- matrix(1:100,  nrow = 10) 
B <- matrix(1:1000, nrow = 10)  

dim(A)
dim(B)

detA <- det(A)
detA

invA <- tryCatch(solve(A), error = function(e) e)
invA

invB <- tryCatch(solve(B), error = function(e) e)
invB



