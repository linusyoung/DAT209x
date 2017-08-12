# CH7

conn_str <- paste(
  "Driver={SQL Server}",
  "Server=msedxeus.database.windows.net",
  "Database=DAT209x01",
  "uid=Rlogin",
  "pwd=P@ssw0rd;",
  sep = ";"
)
conn_str
conn <- odbcDriverConnect(conn_str)
tab <- sqlTables(conn)
head(tab)
