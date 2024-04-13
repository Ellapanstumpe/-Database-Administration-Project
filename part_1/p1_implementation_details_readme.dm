# Database Administration - Part 1
/*
About This SN Labs Cloud IDE
This Skills Network Labs Cloud IDE provides a hands-on environment for course and project related labs. It utilizes Theia, an open-source IDE
(Integrated Development Environment) platform, that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE
based on Theia and PostgreSQL database running in a Docker container. Important Notice about this lab environment
Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any
data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.
  
# Scenario
You have assumed the role of database administrator for the PostgreSQL server and you will perform the User Management tasks and handle the
backup of the databases.
# Objectives
  
In Part 1 of this assignment you will be working on the following aspects of Database Administration.
Installation/Provisioning
Configuration
User Management
Backup
Note - Screenshots
Throughout this lab you will be prompted to take screenshots and save them on your own device. These screenshots will need to be uploaded for peer
review in the next section of the course. You can use various free screengrabbing tools to do this or use your operating system’s shortcut keys to do this
(for example Alt+PrintScreen in Windows).

*/
  
Exercise 1.1 - Set up the lab environment
  
//Before you proceed with the assignment Start the PostgreSQL Server Download the lab setup bash file from https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN￾SkillsNetwork/labs/Final%20Assignment/postgres-setup.sh 
//Run the bash file
  
Task 1.1 - Find the settings in PostgreSQL
  
What is the maximum number of connections allowed for the postgres server on theia lab?
Hint: /home/project/postgres/data/postgresql.conf is the configuration file for PostgreSQL.
Take a screenshot of the config file that clearly shows this information.
Name the screenshot as max-connections.jpg. (images can be saved with either .jpg or .png extension)
![task_1.1!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/max-connection.png?raw=true)
  
Exercise 1.2 - User Management
Perform these user management tasks on your PostgreSQL server.
Perform the tasks 1.2 to 1.5 using the PostgreSQL CLI. DO NOT USE THE PGADMIN GUI.
Task 1.2 - Create a User
Create a user named backup_operator. Take a screenshot of the command you used and the output.
Name the screenshot as create-user.jpg. (images can be saved with either .jpg or .png extension)
Task 1.3 - Create a Role
Create a role named backup. Take a screenshot of the command you used and the output.
Name the screenshot as create-role.jpg. (images can be saved with either .jpg or .png extension)
Task 1.4 - Grant privileges to the role
Grant the following privileges to the backup role.
CONNECT ON tolldata DATABASE.
SELECT ON ALL TABLES IN SCHEMA toll.
Take a screenshot of the command you used and the output.
Name the screenshot as grant-privs-to-role.jpg. (images can be saved with either .jpg or .png extension)
Task 1.5 - Grant role to an user
Grant the role backup to backup_operator
Take a screenshot of the command you used and the output.
Name the screenshot as grant-role.jpg. (images can be saved with either .jpg or .png extension)
Exercise 1.3 - Backup
Task 1.6 - Backup a database on PostgreSQL server
Backup the database tolldata using PGADMIN GUI.
Backup the database tolldata into a file named tolldatabackup.tar, select the backup format as Tar
Take a screenshot of the window that shows the filename and format you have specified.
Name the screenshot as backup-database.jpg. (images can be saved with either .jpg or .png extension)
End of assignment - Part
