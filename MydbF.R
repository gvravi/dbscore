### adding a column to an existing table 
###---------------------------------------
test2 <- function(){
  
library(RMySQL)
mydb =dbConnect(MySQL(),user='root',password='root',dbname='thurst', host='localhost')

#rs = dbSendQuery(mydb, "select * from some_table")
#SELECT  *   FROM    users
#WHERE   record_date >= CURDATE() - INTERVAL 1 DAY

test2 <- dbReadTable(conn=mydb,name='test2') 
#test2$Score<- 0 # *creates new column named column_name and populates its value NA*



for (i in 1:length(test2[,3,6])) {
  #for (i in 1:nrow(test2)){
  
  
  if (test2$Age[i] < 35) {
    test2$Score[i] <- 0 
  }
  
  if (test2$Age[i] >= 35 & test2$Age[i] <= 49) 
  {
    test2$Score[i] <-20
    
    
  }
  
  if (test2$Age[i] >= 50)
  {
    test2$Score[i]<-30
  }
  
  if (test2$Waist[i] < 80)
  {
    test2$Score[i]<- test2$Score[i]+0
    
  }
  if (test2$Waist[i] >= 80 & test2$Waist[i] <= 89)
    
    
  {
    test2$Score[i]<-test2$Score[i]+10
  }
  
  if (test2$Waist[i] >= 90) 
  {
    test2$Score[i] <-test2$Score[i]+20
    
  }
  if (test2$Activity[i] == "RS") {
    test2$Score[i] <-test2$Score[i]+0 
    
  }
  if (test2$Activity[i] == "RA")
  {
    test2$Score[i] <-test2$Score[i]+20
    
  }
  
  if (test2$Activity[i] == "SD") 
  {
    test2$Score[i]<-test2$Score[i]+30
  }    
  if (test2$History[i] == "No")
  {
    test2$Score[i]<-test2$Score[i]+0
    
  }
  if (test2$History[i] == "Single") 
  {
    test2$Score[i] <- test2$Score[i]+10
  }
  
  if (test2$History[i] == "Both")  
  {
    test2$Score[i] <- test2$Score[i]+20
   
    
  }
  
  
}
}