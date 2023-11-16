0x1B. Web stack debugging #4
Overview
This project addresses advanced tasks related to web stack debugging. The goal is to enhance the performance and resolve issues in the web server setup featuring Nginx. The tasks involve benchmarking using ApacheBench, identifying and fixing issues causing failed requests, and making configuration changes to improve user access.

Project Information
Author: Sylvain Kalache, co-founder at Holberton School
Weight: 1
Project Start: Nov 13, 2023, 6:00 AM
Project Deadline: Nov 17, 2023, 6:00 AM
Checker Release: Nov 16, 2023, 6:00 AM
Auto Review: Will be launched at the deadline
Requirements
General
All files interpreted on Ubuntu 14.04 LTS.
Files must end with a new line.
Mandatory README.md file at the root.
Puppet manifests must pass puppet-lint version 2.1.1 without errors.
Puppet manifests must run without errors.
Puppet manifests first line must be a comment explaining its purpose.
Puppet manifests files must end with the extension .pp.
Files checked with Puppet v3.4.
Install puppet-lint:
bash
Copy code
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
Tasks
0. Sky is the limit, let's bring that limit higher
Description
Benchmarking using ApacheBench reveals a significant number of failed requests in the current web server setup with Nginx. The task is to analyze the output, identify the issues, and update the Puppet manifest (0-the_sky_is_the_limit_not.pp) to fix the problems.

bash
Copy code
root@0a62aa706eb3:/# ab -c 100 -n 2000 localhost/
# Output and analysis provided in the task description.
root@0a62aa706eb3:/# puppet apply 0-the_sky_is_the_limit_not.pp
# Puppet manifest applied successfully.
1. User limit
Description
The task involves changing the OS configuration to enable logging in with the holberton user and opening a file without encountering error messages. The Puppet manifest (1-user_limit.pp) must be updated to achieve this.

bash
Copy code
root@079b7269ec1b:~# su - holberton
# Error messages displayed.
root@079b7269ec1b:~# puppet apply 1-user_limit.pp
# Puppet manifest applied successfully.
root@079b7269ec1b:~# su - holberton
# Successful login without error messages.
Repository Information
GitHub Repository: alx-system_engineering-devops
Directory: 0x1B-web_stack_debugging_4
Files:
0-the_sky_is_the_limit_not.pp
1-user_limit.pp
Copyright
Copyright © 2023 ALX, All rights reserved.






