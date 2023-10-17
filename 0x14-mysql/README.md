# Project 0x14. MySQL

## Table of Contents

1. [Project Description](#project-description)
2. [Concepts](#concepts)
3. [Resources](#resources)
4. [Learning Objectives](#learning-objectives)
5. [Copyright and Plagiarism](#copyright-and-plagiarism)
6. [Requirements](#requirements)
7. [Tasks](#tasks)
    - [Task 0: Install MySQL](#task-0-install-mysql)
    - [Task 1: Let us in!](#task-1-let-us-in)
    - [Task 2: If only you could see what I've seen with your eyes](#task-2-if-only-you-could-see-what-ive-seen-with-your-eyes)
    - [Task 3: Quite an experience to live in fear, isn't it?](#task-3-quite-an-experience-to-live-in-fear-isnt-it)
    - [Task 4: Setup a Primary-Replica infrastructure using MySQL](#task-4-setup-a-primary-replica-infrastructure-using-mysql)
    - [Task 5: MySQL backup](#task-5-mysql-backup)

---

## Project Description

This project, 0x14. MySQL, focuses on database administration, web stack debugging, and MySQL. The main objective is to set up a primary-replica infrastructure using MySQL and create a backup of the MySQL database.

---

## Concepts

In this project, you are expected to explore the following concepts:

- Database administration
- Web stack debugging
- How to install MySQL 5.7

---

## Resources

You are encouraged to read and watch resources related to the project, such as:

- What is a primary-replica cluster
- MySQL primary-replica setup
- Building a robust database backup strategy
- `mysqldump` (command)

---

## Learning Objectives

By the end of this project, you should be able to explain the following concepts without relying on external resources:

**General:**
- What is the main role of a database?
- What is a database replica?
- What is the purpose of a database replica?
- Why do database backups need to be stored in different physical locations?
- What operation should you regularly perform to ensure that your database backup strategy works?

---

## Copyright and Plagiarism

You are responsible for solving the tasks in this project on your own. Copying and pasting someone else's work or any form of plagiarism is strictly forbidden and will result in removal from the program. You are not allowed to publish any content of this project.

---

## Requirements

**General:**
- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- A `README.md` file at the root of the project folder is mandatory
- All your Bash script files must be executable
- Your Bash scripts must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

**Your Servers:**
- You have the following servers:

  | Name           | Username | IP             | State   |
  | ---------------| ---------| ---------------| ------- |
  | 278109-web-01  | ubuntu   | 54.237.82.56   | running |
  | 278109-web-02  | ubuntu   | 54.175.146.70  | running |
  | 278109-lb-01   | ubuntu   | 54.209.27.50   | running |

---

## Tasks

### Task 0: Install MySQL

**Mandatory**

Your first task is to install MySQL on both your web-01 and web-02 servers. Ensure that MySQL distribution is 5.7.x.

**Requirements:**
- MySQL distribution must be 5.7.x
- Make sure that task #3 of your SSH project is completed for web-01 and web-02. The checker will connect to your servers to check MySQL status.

### Task 1: Let us in!

**Mandatory**

To verify that your servers are properly configured, create a MySQL user named `holberton_user` on both web-01 and web-02. The user should have the hostname set to `localhost`, and the password should be `projectcorrection280hbtn`. This allows us to access the replication status on both servers.

**Requirements:**
- Create a MySQL user named `holberton_user` on both web-01 and web-02.
- The hostname for the user should be set to `localhost`.
- The password should be `projectcorrection280hbtn`.
- Make sure that `holberton_user` has permission to check the primary/replica status of your databases.
- Ensure that task #3 of your SSH project is completed for web-01 and web-02.

### Task 2: If only you could see what I've seen with your eyes

**Mandatory**

In preparation for setting up replication, create a database named `tyrell_corp` on your primary MySQL server (web-01) with at least one table and one row. The table should be named `nexus6`.

**Requirements:**
- Create a database named `tyrell_corp` on your primary MySQL server (web-01).
- In the `tyrell_corp` database, create a table named `nexus6` and add at least one entry to it.
- Ensure that `holberton_user` has SELECT permissions on your table so that we can check that the table exists and is not empty.

### Task 3: Quite an experience to live in fear, isn't it?

**Mandatory**

Before setting up primary-replica synchronization, create a new user for the replica server on your primary MySQL server (web-01). The user should be named `replica_user`, have the hostname set to `%`, and can have any password of your choice. This user must have the appropriate permissions to replicate your primary MySQL server.

**Requirements:**
- On your primary MySQL server (web-01), create a new user named `replica_user` with the hostname set to `%`.
- The user can have any password.
- `replica_user` must have the appropriate permissions to replicate your primary MySQL server.
- `holberton_user` should have SELECT privileges on the `mysql.user` table to check if `replica_user` was created with the correct permissions.

### Task 4: Setup a Primary-Replica infrastructure using MySQL

**Mandatory**

To enhance redundancy and load distribution, set up a primary-replica infrastructure using MySQL. The primary MySQL server should be hosted on web-01, and the replica server should be hosted on web-02.

**Requirements:**
- The primary MySQL server must be hosted on web-01 (do not use the `bind-address`, just comment out this parameter in the configuration).
- The replica MySQL server must be hosted on web-02.
- Set up replication for the MySQL database named `tyrell_corp`.
-
