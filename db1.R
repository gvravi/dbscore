db<- read.csv(file="db.csv", header=TRUE, sep=",")
score <- 0
score1 <- 0
score2 <- 0
score3 <- 0
score4 <- 0
for (i in 1:nrow(db[,3:5])){
#for(i in seq(along=db[,3:5])) 
 # {

if (db$Age < 35) {
  score1 <- 0 
}

if (db$Age >= 35 & db$Age <= 49) 
  {
      score1<-20
  
      
  }
    
if (db$Age >= 50)
    {
      score1<-30
    }

if (db$Waist < 80)
      {
score2<-0
      
    }
if (db$Wiast >= 80 & db$Wiast <= 89) 
        {
score2<-10
          }
  
if (db$Waist >= 90) 
        {
score2<-20
        
        }
        
if (db$Activity == "RS") {
score3<-0 
          
        }
if (db$Activity == "RA")
            {
score3<-20
              
            }
              
if (db$Activity == "SD") 
            {
              score3=30
            
            }
            
if (db$History == "No")
              {
              score4=0
              
            }
if (db$History == "Single") 
                {
                  score3=10
                }
                
if (db$History == "Both")  
                {
                  score3=20
                
                  
                }
                
  
score <- sum(score1+score2+score3+score4)

  

  }

print (score)
    
   
  