db<- read.csv(file="db.csv", header=TRUE, sep=",")





#db$Age <-0

for (i in  1:nrow(db)){
  if(db$Age[i]<35 & db$Waist[i] < 80 & db$Activity[i]== "RS" & db$History[i]== "No"){
    db$Score[i]<-0
  }
  if(db$Age[i]>35 & db$Waist[i] > 80 & db$Activity[i]=="RA" & db$History[i]== "Single"){
    db$Score[i]<-10
  }
}
