
Project 0x1A. Application Server
Overview
This project involves setting up an application server to serve dynamic content for an Airbnb clone. The project includes configuring Nginx, setting up Gunicorn, and serving various components of the web application.

Concepts
Web Server
Server
Web Stack Debugging
Background Context
The current web infrastructure is serving web pages via Nginx. The goal of this project is to add an application server to the infrastructure, connect it to Nginx, and make it serve the Airbnb clone project.

Resources
Application server vs web server
How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04 (Note: Install Gunicorn globally)
Running Gunicorn
Be careful with the way Flask manages slash in route - strict_slashes
Upstart documentation
Requirements
General
A README.md file at the root of the project folder is mandatory.
All Python-related tasks must be done using Python 3.
All config files must have comments.
Bash scripts:
Interpreted on Ubuntu 16.04 LTS.
End all files with a new line.
All Bash scripts must be executable.
Pass Shellcheck without any errors.
The first line of all Bash scripts should be #!/usr/bin/env bash.
The second line of all Bash scripts should be a comment explaining the script's purpose.
Server Information:
Name	Username	IP	State
278109-web-01	ubuntu	54.237.82.56	running
278109-web-02	ubuntu	54.175.146.70	running
278109-lb-01	ubuntu	54.209.27.50	running
Tasks
0. Set up development with Python
Set up the development environment for the AirBnB clone v2.

SSH project task #3 should be completed for web-01.

Install the net-tools package on the server using sudo apt install -y net-tools.

Git clone the AirBnB_clone_v2 repository on web-01.

Configure web_flask/0-hello_route.py to serve content from the route /airbnb-onepage/ on port 5000.

The Flask application object must be named app.

Example:

bash
Copy code
# Window 1
ubuntu@229-web-01:~/AirBnB_clone_v2$ python3 -m web_flask.0-hello_route
* Serving Flask app "0-hello_route" (lazy loading)
* Environment: production
WARNING: Do not use the development server in a production environment.
Use a production WSGI server instead.
* Debug mode: off
* Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)

# Window 2
ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x1A-application_server
File: README.md
1. Set up production with Gunicorn
Set up the production application server with Gunicorn on web-01, port 5000.

Install Gunicorn and any required libraries for the application.

The Flask application object should be named app.

Serve content from the same route as in task 0.

Bind a Gunicorn instance to localhost listening on port 5000 with the application object as the entry point.

Checker will bind a Gunicorn instance to port 6000, so ensure nothing is listening on that port.

Example:

bash
Copy code
# Terminal 1
ubuntu@229-web-01:~/AirBnB_clone_v2$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[2019-05-03 20:47:20 +0000] [3595] [INFO] Starting gunicorn 19.9.0
[2019-05-03 20:47:20 +0000] [3595] [INFO] Listening at: http://0.0.0.0:5000 (3595)
[2019-05-03 20:47:20 +0000] [3595] [INFO] Using worker: sync
[2019-05-03 20:47:20 +0000] [3598] [INFO] Booting worker with pid: 3598

# Terminal 2
ubuntu@229-web-01:~$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x1A-application_server
2. Serve a page with Nginx
Configure Nginx to serve the page from the route /airbnb-onepage/.

Nginx should proxy requests to the process listening on port 5000.

Nginx must serve the page both locally and on its public IP on port 80.

Include Nginx config file as 2-app_server-nginx_config.

Example:

bash
Copy code
# On server
ubuntu@229-web-01:~/AirBnB_clone_v2$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app

# Local terminal
vagrant@ubuntu-xenial:~$ curl -sI 35.231.193.217/airbnb-onepage/
HTTP/1.1 200 OK
Server: nginx/1.10.3 (Ubuntu)
Date: Mon, 06 May 2019 20:44:55 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 11
Connection: keep-alive
X-Served-By: 229-web-01

vagrant@ubuntu-xenial:~$ curl 35.231.193.217/airbnb-onepage/
Hello HBNB!
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x1A-application_server
File: 2-app_server-nginx_config
3. Add a route with query parameters
Configure Nginx to proxy HTTP requests to the route /airbnb-dynamic/number_odd_or_even/(any integer) to a Gunicorn instance listening on port 5001.
Nginx must serve this page both locally and on its public
