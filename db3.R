db<- read.csv(file="db.csv", header=TRUE, sep=",")

db$score <- 0
score1 <- 0
score2 <- 0
score3 <- 0
score4 <- 0

for(i in seq(along=db[,3:6])){
#for (i in 1:length(db[,3,6])){
#for (i in 1:nrow(db)){

  
  if (db$Age[i] < 35) {
    score1 <- 0 
  }
  
  if (db$Age[i] >= 35 & db$Age[i] <= 49) 
  {
    score1<-20
    
    
  }
  
  if (db$Age[i] >= 50)
  {
    score1<-30
  }
  
  if (db$Waist[i] < 80)
  {
    score2 <-0
    
  }
  
  
  if (db$Waist[i] >= 80 & db$Waist[i] <= 89)
 
      
  {
    score2<-10
  }
  
  if (db$Waist[i] >= 90) 
  {
    score2 <-20
    
  }
  
  if (db$Activity[i] == "RS") {
    score3 <-0 
    
  }
  if (db$Activity[i] == "RA")
  {
    score3 <-20
    
  }
  
  if (db$Activity[i] == "SD") 
  {
    score3<-30
    
  }
  
  if (db$History[i] == "No")
  {
    score4<-0
    
  }
  if (db$History[i] == "Single") 
  {
   score4 <- 10
  }
  
  if (db$History[i] == "Both")  
  {
    score4 <- 20
    
    
  }
  
db$score[i] <- sum(score1+score2+score3+score4)



}





