library(RMySQL)

mydb <- dbConnect(MySQL(), user='root', password='root', dbname='testing', host='localhost')

dbListTables(mydb)
dbListFields(mydb, 'movies')

rs <- dbSendQuery(mydb, "select genres from movies limit 10;")
data <- fetch(rs, n=10)
data
huh <- dbHasCompleted(rs)
dbClearResult(rs)
dbDisconnect(mydb)


#Sql Statements
# SELECT revenue, budget FROM movies
# SELECT revenue, popularity FROM movies
# SELECT revenue, vote_average FROM movies
# SELECT budget, popularity FROM movies
# SELECT budget, vote_average FROM movies
# SELECT 