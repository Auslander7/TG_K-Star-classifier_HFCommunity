install.packages("neo4r")
install.packages("RWeka")


library(neo4r)
library(RWeka)

# ---- Conexión a Neo4j ----
con <- neo4j_api$new(
  url = "http://localhost:7474", 
  user = "neo4j",
  password = "Esteban_7179"
)

resultado <- con$call_cypher("
  MATCH (n) 
  RETURN labels(n) AS etiquetas, count(*) AS cantidad 
  LIMIT 5
")

print(resultado$data)


