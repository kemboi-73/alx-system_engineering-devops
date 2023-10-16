# Advanced Tasks: 0x13 Firewall Readme

This project involves configuring and managing a firewall using UFW (Uncomplicated Firewall) on a web server, and setting up port forwarding. Here are the details for each task:

## Task 0: Block all incoming traffic but SSH, HTTPS, and HTTP
In this task, you need to configure UFW on the web-01 server to block all incoming traffic except for specific TCP ports:

- SSH (Port 22)
- HTTPS (Port 443)
- HTTP (Port 80)

You should share the UFW commands you used to set up these rules. Please ensure that you apply these rules only to web-01.

**File:** [0-block_all_incoming_traffic_but](./0x13-firewall/0-block_all_incoming_traffic_but)

## Task 1: Port Forwarding
In this advanced task, you will configure the web-01 server's firewall to forward incoming traffic from port 8080/TCP to port 80/TCP. This is achieved by modifying the UFW configuration file.

**File:** [100-port_forwarding](./0x13-firewall/100-port_forwarding)

Please make sure to document the configuration changes you make to achieve this port forwarding.

### Testing
You can test whether the port forwarding is correctly set up by using the `curl` command from another server. You should receive HTTP 200 responses for both port 80 and port 8080 on web-01.holberton.online.

Remember to exercise caution when working with firewall rules, as improper configurations can lead to connectivity issues. Always double-check your work before logging out of the server.

Feel free to reach out if you have any questions or need further assistance. Good luck with the tasks!

