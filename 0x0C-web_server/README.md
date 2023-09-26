# ALX Web Server Project

## Project Oveview
This project, authored by Sylvain Kalache, is focused on web server configuration and automation. Here are the key details:

- **Project Start:** Sep 25, 2023 6:00 AM
- **Project End:** Sep 27, 2023 6:00 AM
- **Checker Release:** Sep 25, 2023 6:00 PM

### Concepts

For this project, you will explore the concept of **Child Processes** and understand their role in web server operations.

### Learning Objectives

By the end of this project, you will be able to:

- Explain the main role of a web server
- Define what a child process is
- Describe why web servers typically have parent and child processes
- Identify the main HTTP requests
- Understand DNS, its purpose, and different DNS record types

## Requirements

### General

- **Allowed Editors:** vi, vim, emacs
- **Interpretation:** Ubuntu 16.04 LTS
- **Files:** All files must end with a newline character
- **README.md:** A mandatory README.md file at the root of the project folder
- **Bash Scripts:** All Bash script files must be executable
- **Shellcheck:** Your Bash script must pass Shellcheck (version 0.3.7) without any errors
- **Script Header:** The first line of all Bash scripts should be `#!/usr/bin/env bash`, and the second line should be a comment explaining the script's purpose
- **No systemctl:** You can't use systemctl for restarting a process

### Tasks

#### 0. Transfer a File to Your Server

Write a Bash script that transfers a file from a client to a server:

- Accepts 4 parameters: Path to the file to be transferred, the server's IP, the username for SCP, and the path to the SSH private key
- Display usage instructions if fewer than 3 parameters are passed
- Transfer the file to the user's home directory (~/)
- Disable strict host key checking for SCP

#### 1. Install Nginx Web Server

Install Nginx on your web-01 server and configure it as follows:

- Nginx should listen on port 80
- A GET request to Nginx's root / should return a page containing the string "Hello World!"
- Write a Bash script to configure a new Ubuntu machine to meet the above requirements
- Do not use systemctl for restarting Nginx

#### 2. Setup a Domain Name

Provide a domain name (example: foobar.tech) and configure your DNS records with an A entry pointing to your web-01 server's IP address.

#### 3. Redirection

Configure your Nginx server to redirect requests to /redirect_me to another page using a "301 Moved Permanently" status code.

- Write a Bash script to configure a new Ubuntu machine to perform this redirection

#### 4. Not Found Page 404

Configure your Nginx server to have a custom 404 page that returns an HTTP 404 error code and contains the string "Ceci n'est pas une page."

- Write a Bash script to configure a new Ubuntu machine to meet the above requirements

## Copyright & Plagiarism

- Avoid plagiarism; come up with your solutions for the tasks
- Do not publish any content from this project

Thank you for your dedication to this project. Happy learning and happy coding!

Copyright © 2023 ALX, All rights reserved.
