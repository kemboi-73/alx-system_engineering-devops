# 0x0D. Web stack debugging #0

**Project:** Web stack debugging and troubleshooting

**Author:** Sylvain Kalache, co-founder at Holberton School

**Weight:** 1

**Project Dates:** Sep 25, 2023 - Sep 27, 2023

**Checker Release Date:** Sep 26, 2023 6:00 PM

**Auto Review:** An auto review will be launched at the deadline

## Concepts

For this project, we expect you to explore the following concepts:

- Network basics
- Docker
- Web stack debugging

## Background Context

The Webstack debugging series will train you in the art of debugging. Computers and software rarely work the way we want (that’s the “fun” part of the job!).

Being able to debug a webstack is essential for a Full-Stack Software Engineer, and it takes practice to be a master of it.

In this debugging series, broken/bugged webstacks will be given to you. The final goal is to create a Bash script that, when executed, will bring the webstack to a working state. But before writing this Bash script, you should figure out what is going wrong and fix it manually.

Let's start with a very simple example. My server must:

1. Have a copy of the `/etc/passwd` file in `/tmp`.
2. Have a file named `/tmp/isworking` containing the string "OK".

Let's pretend that without these two elements, my web application cannot work.

Here's a simplified example of how to fix the server:

```bash
vagrant@vagrant:~$ docker run -d -ti ubuntu:14.04
...
vagrant@vagrant:~$ docker exec -ti <CONTAINER_ID> /bin/bash
root@<CONTAINER_ID>:/# ls /tmp/
root@<CONTAINER_ID>:/# cp /etc/passwd /tmp/
root@<CONTAINER_ID>:/# echo OK > /tmp/isworking
root@<CONTAINER_ID>:/# ls /tmp/
isworking  passwd
root@<CONTAINER_ID>:/#
```

Then, your answer file would contain:

```bash
sylvain@ubuntu:~$ cat answerfile
#!/usr/bin/env bash
# Fix my server with these magic 2 lines
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
sylvain@ubuntu:~$
```

Note that as you cannot use interactive software such as emacs or vi in your Bash script, everything needs to be done from the command line (including file editing).

## Installing Docker

For this project, you will be given a container that you can use to solve the task. If you would like to have Docker so that you can experiment with it and/or solve this problem locally, you can install it on your machine, your Ubuntu 14.04 VM, or your Ubuntu 16.04 VM if you upgraded.

- [Mac OS](https://docs.docker.com/docker-for-mac/install/)
- [Windows](https://docs.docker.com/docker-for-windows/install/)
- [Ubuntu 14.04](https://docs.docker.com/install/linux/docker-ce/ubuntu1404/) (Note that Docker for Ubuntu 14 is deprecated, and you may have to make some adjustments to the instructions when installing)
- [Ubuntu 16.04](https://docs.docker.com/install/linux/docker-ce/ubuntu1604/)

## Resources

- `man` or help:
  - `curl`

## Requirements

### General

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on Ubuntu 14.04 LTS
- All your files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash scripts must pass Shellcheck without any error
- Your Bash scripts must run without error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Tasks

### 0. Give me a page! (mandatory)

In this first debugging project, you will need to get Apache to run on the container and return a page containing "Hello Holberton" when querying the root of it.

Example:

```bash
vagrant@vagrant:~$ docker run -p 8080:80 -d -it holbertonschool/265-0
...
vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE                   COMMAND             CREATED             STATUS              PORTS                  NAMES
<CONTAINER_ID>        holbertonschool/265-0   "/bin/bash"         3 seconds ago       Up 2 seconds        0.0.0.0:8080->80/tcp   vigilant_tesla
vagrant@vagrant:~$ curl 0:8080
curl: (52) Empty reply from server
vagrant@vagrant:~$
```

After connecting to the container and fixing whatever needs to be fixed (your mission), you should see that curling port 80 returns a page containing "Hello Holberton." Paste the command(s) you used to fix the issue in your answer file.

**Repo:**

- [GitHub Repository: alx-system_engineering-devops](https://github.com/your_username/alx-system_engineering-devops)
- Directory: `0x0D-web_stack_debugging_0`

---

Feel free to customize this README to your liking and add any additional information that you think would be helpful for users of your project.
