# Database Deployment Prototype

-   Install the `sqlpackage` command from [here](https://docs.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage-download?view=sql-server-ver15).
-   The `sqlcmd` package should already be installed on your computer if you've installed SSMS.
-   In order to build the 'Database' project execute `dotnet build /p:NetCoreBuild=true` within the 'Database' project directory. This will generate a dacpac in the `\bin\Debug` directory.
-   Execute the command `.\sqlpackage /Action:Script /SourceFile:"C:\Users\Bill\Desktop\Git\DatabaseDeploymentPrototype\Database\bin\Debug\Database.dacpac" /TargetDatabaseName:Movies /TargetServerName:"{SERVER}" /TargetUser:"{USERNAME}" /TargetPassword:"{PASSWORD}" /OutputPath:"C:\Users\Bill\Desktop\scripts\script.sql"` (this generates a SQL script that can be used to deploy the database changes to the server).
-   Finally, execute the command `sqlcmd -U {USERNAME} -P {PASSWORD} -S salesx-mssql-prod-g-ue1.cfohb0fhpenj.us-east-1.rds.amazonaws.com -i script.sql`. This will execute the script against the specified SQL Server.

apt-get install curl

curl https://aka.ms/sqlpackage-linux -O -J -L

apt-get install libunwind8
apt-get install libicu66
apt install unzip

unzip sqlpackage-linux -d ~/sqlpackage
echo "export PATH=\"\$PATH:$HOME/sqlpackage\"" >> ~/.bashrc

chmod a+x sqlpackage
source ~/.bashrc
sqlpackage

sql cmd

apt-get install gnupg
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list | tee /etc/apt/sources.list.d/msprod.list
apt-get update
apt-get install mssql-tools

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc

apt-get install -y apt-transport-https && apt-get update && apt-get install -y dotnet-sdk-6.0

docker cp . d7272e6139d1:/prototype

https://github.com/microsoft/mssql-docker/blob/master/linux/mssql-tools/Dockerfile
