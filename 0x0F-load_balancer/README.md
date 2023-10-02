# Project: Load Balancer Configuration


## Table of Contents
1. [Project Description](#project-description)
2. [Concepts](#concepts)
3. [Background Context](#background-context)
4. [Resources](#resources)
5. [Requirements](#requirements)
6. [Server Information](#server-information)
7. [Tasks](#tasks)
   - [Task 0: Double the number of webservers](#task-0-double-the-number-of-webservers)
   - [Task 1: Install your load balancer](#task-1-install-your-load-balancer)
8. [Copyright](#copyright)

---

## Project Description

This project involves configuring a load balancer and improving the web stack by adding redundancy to the web servers. By doing so, we can handle more traffic and make the infrastructure more reliable. The load balancer will distribute incoming requests between two web servers, ensuring that if one server fails, the other can handle the traffic.

### DevOps & SysAdmin: Load Balancer Configuration
- **Author:** Sylvain Kalache, co-founder at Holberton School
- **Weight:** 1
- **Project Start:** Oct 2, 2023, 6:00 AM
- **Project Deadline:** Oct 3, 2023, 6:00 AM
- **Checker Release:** Oct 2, 2023, 12:00 PM
- **Auto Review:** Will be launched at the deadline

### Concepts
For this project, you are expected to familiarize yourself with the following concepts:
- Load balancer
- Web stack debugging

## Background Context

You have been provided with two additional servers:
1. `gc-[STUDENT_ID]-web-02-XXXXXXXXXX`
2. `gc-[STUDENT_ID]-lb-01-XXXXXXXXXX`

The goal is to configure the web servers and set up a load balancer to distribute traffic between them. This redundancy will ensure that even if one web server fails, the other can continue handling requests.

## Resources

Before starting the project, make sure to read or watch the following resources:
- [Introduction to load-balancing and HAproxy](#)
- [HTTP header](#)
- [Debian/Ubuntu HAProxy packages](#)

## Requirements

### General
- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- A `README.md` file, at the root of the project folder, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck (version 0.3.7) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

### Server Information

| Name            | Username | IP               | State   |
|-----------------|----------|------------------|---------|
| 278109-web-01   | ubuntu   | 54.237.82.56     | running |
| 278109-web-02   |          |                  |         |
| 278109-lb-01    |          |                  |         |

## Tasks

### Task 0: Double the number of webservers (mandatory)

In this task, you need to configure `web-02` to be identical to `web-01`. You should automate this configuration using Bash scripts. Additionally, you need to add a custom Nginx response header to track which web server is answering HTTP requests.

#### Requirements:
- Configure Nginx so that its HTTP response contains a custom header (on `web-01` and `web-02`).
- The name of the custom HTTP header must be `X-Served-By`.
- The value of the custom HTTP header must be the hostname of the server Nginx is running on.
- Write a script named `0-custom_http_response_header` that configures a brand new Ubuntu machine to meet these requirements.
- Ignore `SC2154` for shellcheck.

#### Example:
```bash
sylvain@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
sylvain@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
sylvain@ubuntu$
```

### Task 1: Install your load balancer (mandatory)

Install and configure HAproxy on your `lb-01` server to distribute traffic to `web-01` and `web-02` using a round-robin algorithm. Ensure that HAproxy can be managed via an init script.

#### Requirements:
- Configure HAproxy to send traffic to `web-01` and `web-02`.
- Distribute requests using a round-robin algorithm.
- Make sure HAproxy can be managed via an init script.
- Ensure that your servers are configured with the right hostnames: `[STUDENT_ID]-web-01` and `[STUDENT_ID]-web-02`.

For your answer file, write a Bash script that configures a new Ubuntu machine to meet the above requirements.

#### Example:
```bash
sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes

sylvain@ubuntu$
```

---

## Copyright

Copyright © 2023 ALX, All rights reserved.
