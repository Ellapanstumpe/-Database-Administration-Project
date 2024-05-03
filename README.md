# Database Administration Project
This is a Database Administration project on Relational Database Administration (DBA) course. This project demostraite my Database Administration skills of IBM db2 , MySQL, PostgreSQL and shell scripts. This project is devided into 3 parts and cover various skills related to database administration. Here's a breakdown of the skills tested in each part:


# Part 1:

Installation/Provisioning of a PostgreSQL server

Configuration of PostgreSQL server settings

User Management tasks in PostgreSQL, including creating users and roles, and granting privileges

Backup tasks in PostgreSQL, including backing up a database using PGADMIN GUI


# Part 2:

Installation/Provisioning of a MySQL server

Configuration of MySQL server settings

Recovery tasks in MySQL, including restoring a database from backup

Indexing to improve database performance in MySQL

Identifying supported storage engines in MySQL

Automation of routine backup tasks using a bash script



# Part 3:

Provisioning a cloud instance of IBM DB2 server

Restoration of data in DB2, including importing data from CSV files

Indexing to improve query performance in DB2

Creation of views in DB2 to simplify queries




The Project implementation details as following
_______________________________________________________________________________________________________________________________________________________________________________________

About This SN Labs Cloud IDE
This Skills Network Labs Cloud IDE provides a hands-on environment for course and project related labs. It utilizes Theia, an open-source IDE
(Integrated Development Environment) platform, that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE
based on Theia and PostgreSQL database running in a Docker container. 

# Database Administration - Part 1

# Scenario
You have assumed the role of database administrator for the PostgreSQL server and you will perform the User Management tasks and handle the
# Objectives
backup of the databases.
  
In Part 1 of this assignment you will be working on the following aspects of Database Administration.
Installation/Provisioning
Configuration
User Management
Backup
Note - Screenshots
Throughout this lab you will be prompted to take screenshots and save them on your own device. These screenshots will need to be uploaded for peer
review in the next section of the course. You can use various free screengrabbing tools to do this or use your operating system’s shortcut keys to do this
(for example Alt+PrintScreen in Windows).

  
Exercise 1.1 - Set up the lab environment
  
//Before you proceed with the assignment Start the PostgreSQL Server Download the lab setup bash file from https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN￾SkillsNetwork/labs/Final%20Assignment/postgres-setup.sh 
//Run the bash file
  
# Task 1.1 - Find the settings in PostgreSQL
  
What is the maximum number of connections allowed for the postgres server on theia lab?
Hint: /home/project/postgres/data/postgresql.conf is the configuration file for PostgreSQL.
Take a screenshot of the config file that clearly shows this information.
Name the screenshot as max-connections.jpg. (images can be saved with either .jpg or .png extension)
![task_1.1!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/max-connection.png?raw=true)
  
# Exercise 1.2 - User Management
Perform these user management tasks on your PostgreSQL server.
Perform the tasks 1.2 to 1.5 using the PostgreSQL CLI. DO NOT USE THE PGADMIN GUI.
Task 1.2 - Create a User
Create a user named backup_operator. Take a screenshot of the command you used and the output.
Name the screenshot as create-user.jpg. (images can be saved with either .jpg or .png extension)
![task_1.2!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/backup-database.png?raw=true)



# Task 1.3 - Create a Role
Create a role named backup. Take a screenshot of the command you used and the output.
Name the screenshot as create-role.jpg. (images can be saved with either .jpg or .png extension)

![task1.3!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/create-role.png)


# Task 1.4 - Grant privileges to the role
Grant the following privileges to the backup role.
CONNECT ON tolldata DATABASE.
SELECT ON ALL TABLES IN SCHEMA toll.
Take a screenshot of the command you used and the output.
Name the screenshot as grant-privs-to-role.jpg. (images can be saved with either .jpg or .png extension)

![Task1.4!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/grand-privs-to-role.jpg?raw=true)


# Task 1.5 - Grant role to an user
Grant the role backup to backup_operator
Take a screenshot of the command you used and the output.
Name the screenshot as grant-role.jpg. (images can be saved with either .jpg or .png extension)
![Task1.5!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/grant-role.png?raw=true)

# Exercise 1.3 - Backup
Task 1.6 - Backup a database on PostgreSQL server
Backup the database tolldata using PGADMIN GUI.
Backup the database tolldata into a file named tolldatabackup.tar, select the backup format as Tar
Take a screenshot of the window that shows the filename and format you have specified.
Name the screenshot as backup-database.jpg. (images can be saved with either .jpg or .png extension)
![Task1.6!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_1/backup-database.png?raw=true)

End of assignment - Part1

______________________________________________________________________________________________________________________________________________________________________________________

# Database Administration - Part 2

Scenario

You have assumed the role of database administrator for the MySQL server and will perform the tasks like configuration check, recovery of data. You
will use indexing to improve the database performance. You will identify which storage engines are supported by the server and which table uses which
storage engine. Optionally You will also automate backup tasks.

Objectives

In part 2 of this assignment you will be working on the following aspects of Database Administration.
Installing/Provisioning
Configuration
Recovery
Indexing
Storage Engines
Automation of routine tasks
Note - Screenshots
Throughout this lab you will be prompted to take screenshots and save them on your own device. These screenshots need to be uploaded for peer
review in the next section of the course. You can use various free screengrabbing tools to do this or use your operating system’s shortcut keys to do this
(for example Alt+PrintScreen in Windows).

# Exercise 2.1 - Set up the lab environment
Before you proceed with the assignment, start the MySQL Server.

# Exercise 2.2 - Recovery
Task 2.1 - Restore MySQL server using a previous backup
Download the backup file https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN￾SkillsNetwork/labs/Final%20Assignment/billingdata.sql.
Restore this file onto MySQL server.
List the tables in the billing database.
Take a screenshot of the list of tables.
Name the screenshot as database-restore.jpg. (images can be saved with either .jpg or .png extension)
![Task2.1](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/database-restore.png?raw=true)

# Task 2.2 - Find the table data size
Find the data size of the table billdata.
Take a screenshot of the command you used and the output.
Name the screenshot as table-data-size.jpg. (images can be saved with either .jpg or .png extension)
![Task2.2!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/table-data-size.png?raw=true)


# Exercise 2.3 - Indexing
Task 2.3 - Baseline query performance Write a query to select all rows with a billedamount > 19999 in table billdata.
Take a screenshot of the command you used and the output along with the query time.
Name the screenshot as query-base-line.jpg. (images can be saved with either .jpg or .png extension)
![Task2.3!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/query-base-line.png?raw=true)


# Task 2.4 - Create an index
Your customer wants to improve the execution time of the query you wrote in Task 2.3.
Create an appropriate index to make it run faster. Take a screenshot of the command you used and the output.
Name the screenshot as index-creation.jpg. (images can be saved with either .jpg or .png extension)
![Task2.4!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/index-creation.png?raw=true)

# Task 2.5 - Document the improvement in query performance
Find out if the index has any impact on query performance.
Re-run the baseline query of Task 2.3 after creating the index.
Take a screenshot of the command you used and the output along with the query time.
Name the screenshot as query-indexed.jpg. (images can be saved with either .jpg or .png extension)
![Task2.5!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/query-indexed.png?raw=true)

# Exercise 2.4 - Storage Engines
Run a command to find out if your MySQL server supports the MyISAM storage engine.
Task 2.6 - Find supported storage engines
Take a screenshot of the command you used and the output.
Name the screenshot as storage-engines.jpg. (images can be saved with either .jpg or .png extension)
![Task2.6!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/storage-engines.png?raw=true)

# Task 2.7 - Find the storage engine of a table
Find the storage engine of the table billdata. Take a screenshot of the command you used and the output.
Name the screenshot as storage-engine-type.jpg. (images can be saved with either .jpg or .png extension)
![Task2.7!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/storage-engine-type.png?raw=true)
# Bonus Task 2.8 - Write a bash script that performs a backup of all the databases
mysqldump is a command line tool that performs logical backups of a database.
Its generic syntax is mysqldump db_name > backup-file.sql
Its extended syntax is mysqldump --all-databases --user=root --password=NzA4Ny1y > backup-file.sql
Write a bash script named mybackup.shthat performs the following tasks.
Perform the backup of all databases using the mysqldump
Store the output in the file all-databases-backup.sql
In the /tmp directory, create a directory named after current date like YYYYMMDD. For example, 20210830
Move the file all-databases-backup.sql to /tmp/mysqldumps/<current date>/ directory
Take a screenshot of the bash script with the entire code clearly visible.
Name the screenshot as bash-script.jpg. (images can be saved with either .jpg or .png extension)
![Task2.8!](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_2/bash-script.png?raw=true)

End of assignment - Part 2.

______________________________________________________________________________________________________________________________________________________________________________________

# Database Administration - Part 3

# Scenario
You have been assigned the work to provison a cloud instance of IBM DB2 server and perform the tasks like restoration of data, index creation to
improve the query performance. You will create views to make queries easier to write. Optionally You will also connect to the cloud instance of IBM
DB2 server and from command line.
# Objectives
In part 3 of this assignment you will be working on the following aspects of Database Administration.
Restore data
Indexing
View creation
Connecting from command line
Note - Screenshots


Throughout this lab you will be prompted to take screenshots and save them on your own device. These screenshots will be needed to be uploaded for
peer review in the next section of the course. You can use various free screengrabbing tools to do this or use your operating system’s shortcut keys to do
this (for example Alt+PrintScreen in Windows).


# Exercise 3.1 - Prepare the lab environment
Before you proceed with the assignment, you need to have access to a cloud instance of IBM DB2 database. If you do not have access, use the
instructions in this lab Hands-on Lab: Sign up for IBM Cloud and Create a Db2 service instance to create a instance for yourself.
Download the file billing.csv
Exercise 3.2 - Restore data
Task 3.1 - Restore the table billing
Use the billing.csv you have downloaded earlier, restore the csv file into a table named billing.
Note: You will see that each column has data type and column width auto generated based on the content. Edit column attributes by clicking on the
pencil icon next to the respective attributes to change the width of country column to varchar of 30 and month column to varchar of 7.
Take a screenshot of the import status clearly showing the number of rows imported.
Name the screenshot as restore-table.jpg. (images can be saved with either .jpg or .png extension)
![Task3.1](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_3/restore-table.png?raw=true)


# Exercise 3.3 - Create a view

Task 3.2 - Create a view named basicbilldetails with the columns customerid, month, billedamount Take a screenshot of the sql statement used to create the view.
Name the screenshot as create-view.jpg. (images can be saved with either .jpg or .png extension)
![Task3.2](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_3/create-view.png?raw=true)


Exercise 3.4 - Indexing

Task 3.3 - Baseline query performance Write a query to find out all the rows with a billing amount of 19929.
Take a screenshot of the command you used along with the query run time.
Name the screenshot as query-base-line-db2.jpg. (images can be saved with either .jpg or .png extension)
![Task3.3](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_3/query-base-line-db2.png?raw=true)


# Task 3.4 - Create an index
Create an index that can make the query in the previous task faster. Name the index as billingamount. Take a screenshot of the sql statement you used and the output.
Name the screenshot as index-creation-db2.jpg. (images can be saved with either .jpg or .png extension)
![Task3.4](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_3/index-creation-db2.png?raw=true)

# Task 3.5 - Document the improvement in query performance
Find out if the index has any impact on query performance.Re-run the query to find out all the rows with a billing amount of 19929.
Take a screenshot of the command you used and the output along with the query time.
Note: Sometimes, the query time after index creation may increase. This can happen due to various factors like
bandwidth at the time of firing the query the load on free cloud tier that your IBM DB2 instance uses is dynamic and other load may impact your query time
You will NOT be evaluated on the query run time. However, you are encouraged to run the query multiple times and pick the result with lowest queryrun time.
Name the screenshot as query-after-index.jpg. (images can be saved with either .jpg or .png extension)
![Task3.5](https://github.com/Ellapanstumpe/-Database-Administration-Project/blob/main/part_3/query-after-index.png?raw=true)


Overall, this project examinated skills related to database installation, configuration, user management, backup and recovery, indexing, storage engines, automation, data restoration, view creation, and command line connectivity.
