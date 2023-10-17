# Project 0x12. Web Stack Debugging #2

## Table of Contents

1. [Project Description](#project-description)
2. [Concepts](#concepts)
3. [Requirements](#requirements)
4. [Tasks](#tasks)
    - [Task 0: Run software as another user](#task-0-run-software-as-another-user)
    - [Task 1: Run Nginx as Nginx](#task-1-run-nginx-as-nginx)
5. [Contact](#contact)
6. [Copyright](#copyright)

---

## Project Description

This project is part of the ALX School curriculum and focuses on web stack debugging, DevOps, SysAdmin, scripting, and debugging tasks. In this project, you will be working with Linux-based systems running Ubuntu 20.04 LTS.

---

## Concepts

The main concept addressed in this project is **Web stack debugging**.

---

## Requirements

General requirements for this project include:

- All your files must be interpreted on Ubuntu 20.04 LTS.
- All your files should end with a new line.
- A `README.md` file at the root of the folder of the project is mandatory.
- All your Bash script files must be executable.
- Your Bash scripts must pass Shellcheck without any error.
- Your Bash scripts must run without error.
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all your Bash scripts should be a comment explaining what the script is doing.

---

## Tasks

### Task 0: Run software as another user

**Mandatory**

The user `root` is the superuser on Linux, which can perform any operation. However, it's not recommended to perform daily tasks as `root` to avoid accidental damage. Instead, one should run commands with specific privileges.

For this task, you need to create a Bash script that accepts one argument and runs the `whoami` command under the user passed as an argument.

**Requirements:**

- Write a Bash script that accepts one argument.
- The script should run the `whoami` command under the user passed as an argument.
- Make sure to test your script by passing different users.

### Task 1: Run Nginx as Nginx

**Mandatory**

By default, web servers like Nginx often run as the superuser `root`. For security reasons, it's recommended to run the web server process as a less privileged user, in this case, `nginx`. You need to configure Nginx to run as the `nginx` user and listen on all active IPs on port 8080.

**Requirements:**

- Nginx must be running as the `nginx` user.
- Nginx must be listening on all active IPs on port 8080.
- You cannot use `apt-get remove`.
- Write a Bash script that configures the container to meet the above requirements.

---

## Contact

For any questions or concerns regarding this project, you can contact the project author:

- **Author**: Sylvain Kalache
- **Email**: [sylvain@holbertonschool.com](mailto:sylvain@holbertonschool.com)

---

## Copyright

© 2023 ALX. All rights reserved.
