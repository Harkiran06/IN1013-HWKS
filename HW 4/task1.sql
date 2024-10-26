mysql>  DROP DATABASE pet_database;
Query OK, 2 rows affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> CREATE DATABASE IF NOT EXISTS pet_database;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| pet_database       |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE pet_database;
Database changed
mysql> CREATE TABLE IF NOT EXISTS petPet (
    -> petname VARCHAR(20) NOT NULL,
    -> owner VARCHAR(45) NOT NULL,
    -> species VARCHAR(255) NOT NULL,
    -> gender VARCHAR(6) NOT NULL,
    -> birth DATE NOT NULL,
    -> death DATE,
    -> UNIQUE(petname)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> DESCRIBE petPet;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| petname | varchar(20)  | NO   | PRI | NULL    |       |
| owner   | varchar(45)  | NO   |     | NULL    |       |
| species | varchar(255) | NO   |     | NULL    |       |
| gender  | varchar(6)   | NO   |     | NULL    |       |
| birth   | date         | NO   |     | NULL    |       |
| death   | date         | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> CREATE TABLE IF NOT EXISTS petEvent(
    -> petname VARCHAR(20) NOT NULL,
    -> eventdate DATE NOT NULL,
    -> eventtype VARCHAR(255) NOT NULL,
    -> remark VARCHAR(255),
    -> FOREIGN KEY (petname) REFERENCES petPet(petname),
    -> PRIMARY KEY (eventdate,petname)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> DESCRIBE petEvent;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| petname   | varchar(20)  | NO   | PRI | NULL    |       |
| eventdate | date         | NO   | PRI | NULL    |       |
| eventtype | varchar(255) | NO   |     | NULL    |       |
| remark    | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> notee;
