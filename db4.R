db<- read.csv(file="db.csv", header=TRUE, sep=",")

#db$score <- 0
#score1 <- 0
#score2 <- 0
#score3 <- 0
#score4 <- 0

#for(i in seq(along=db[,3:6]))  {
  
for (i in 1:length(db[,3,6])) {
  #for (i in 1:nrow(db)){
  
  
  if (db$Age[i] < 35) {
    db$Score[i] <- 0 
  }
  
  if (db$Age[i] >= 35 & db$Age[i] <= 49) 
  {
    db$Score[i] <-20
    
    
  }
  
  if (db$Age[i] >= 50)
  {
    db$Score[i]<-30
  }
  
  if (db$Waist[i] < 80)
  {
    db$Score[i]<- db$Score[i]+0
    
  }
  if (db$Waist[i] >= 80 & db$Waist[i] <= 89)
    
    
  {
    db$Score[i]<-db$Score[i]+10
  }
  
  if (db$Waist[i] >= 90) 
  {
    db$Score[i] <-db$Score[i]+20
    
  }
  if (db$Activity[i] == "RS") {
    db$Score[i] <-db$Score[i]+0 
    
  }
  if (db$Activity[i] == "RA")
  {
    db$Score[i] <-db$Score[i]+20
    
  }
  
  if (db$Activity[i] == "SD") 
  {
    db$Score[i]<-db$Score[i]+30
  }    
  if (db$History[i] == "No")
  {
    db$Score[i]<-db$Score[i]+0
    
  }
  if (db$History[i] == "Single") 
  {
    db$Score[i] <- db$Score[i]+10
  }
  
  if (db$History[i] == "Both")  
  {
    db$Score[i] <- db$Score[i]+20
    
    
  }
  

}

