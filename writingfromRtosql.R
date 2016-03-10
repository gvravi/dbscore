mydb = dbConnect(MySQL(), user='root', password='root', dbname='thurst', host='localhost')

# Writing to a table from a csv file
dbWriteTable(mydb, "test2", "C:/Users/avon/Documents/R/myR/db.csv") 

# Wrting to rable from data table in R
dbWriteTable(mydb, name='dbscore',db)


### Generic code for adding a column to an existing table 
###-----------------------------------------------------------

#mydb =dbConnect(MySQL(),user='root',password='newpass',dbname='database_name', host='localhost')

#my_table <- dbReadTable(conn=mydb,name='table_name') 
#my_table$column_name<- NA # *creates new column named column_name and populates its value NA*
#head(my_table) # *shows the data* 
#---------------------------------------------------------------------------------------------

#Disconnect from the database
#command: dbDisconnect(dbconnection)
#dbDisconnect(mydb)