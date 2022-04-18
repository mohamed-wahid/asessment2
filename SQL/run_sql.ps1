# Starting a MSSQL 2019 Sql Server in Docker listening on port 1433 named mySQL2019
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Password123" -p 1433:1433 -d --name mySQL2019 mcr.microsoft.com/mssql/server

# If you want to run the initial setup script
# First copy you script to your container
docker cp ./create_db.sql mySQL2019:/var/opt/mssql

# Now run the script inside of the container
# Any time you change or add anything in your create_db.sql script, you can run this again
docker exec -it mySQL2019 /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Password123' -i /var/opt/mssql/create_db.sql 
