Creating the new n7db_vapt_02 Environment in the new server 10.2.1.4

1.Opened the gitea and moved to the path 

Path:10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Step0_DBcreation/DB_creation.sql
a.Changed the database name to n7db_vapt_02 .
b.Opened the Execution_createdb.bat file in the below path
http://10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Execution_createdb.bat
c.Changed the database name to cb7_test_202413NOV
d.Changed the host name to 10.2.1.4
e.Changed the user name to n7dbo
f.Commit the file

Move to the below path C:\Users\Amarnath\n7_prod_dbscripts
open git bash and run git pull
g.Opened the cmd in the Data_Migration_N7 path and followed the below steps
i.more Execution_createdb---->checked the data has been modified or not    
j.Execution_createdb --->run the command
k.Checked in the database whether the schemes are populated 

Populating the master tables and views and functions

2.Opened the below path Execution.bat file 

http://10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Execution.bat
a.Changed the database name to n7db_vapt_02
b.Changed the host name to 10.2.1.4
c.Changed the user name to n7dbo
d.Only executed upto step3metada
e.Commit the file

Opened the cmd in the Data_Migration_N7 path and followed the below steps
f.git pull
g.more Execution.bat---->checked the data has been modified or not
h.Execution.bat --->run the command
i.Checked in the database whether the tables and views and functions are populated

3.Run the commands in tenant.sql file in 10.2.1.4 host 
Path:10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Step0_DBcreation/tenant.sql
