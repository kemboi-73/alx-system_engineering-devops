# DevOps Project: SSH Configuration

## Table of Contents

- [Background Context](#background-context)
- [Resources](#resources)
- [Learning Objectives](#learning-objectives)
- [Copyright - Plagiarism](#copyright-plagiarism)
- [Requirements](#requirements)
- [Tasks](#tasks)
  1. [Use a Private Key](#1-use-a-private-key)
  2. [Create an SSH Key Pair](#2-create-an-ssh-key-pair)
  3. [Client Configuration File](#3-client-configuration-file)
  4. [Let Me In!](#4-let-me-in!)
  5. [Client Configuration File (w/ Puppet)](#5-client-configuration-file-w-puppet)

---

## Background Context

In this DevOps project, you've been assigned an Ubuntu server located in a remote data center. Your task is to configure SSH access to this server using an RSA key instead of a password. This README will guide you through the tasks and learning objectives of this project.

### Server Information

- **Server Name**: 278109-web-01
- **Username**: ubuntu
- **Server IP**: [IP Address]
- **Server State**: [Not specified]

Your server is configured with an Ubuntu 20.04 LTS environment.

---

## Resources

Before you begin, it's essential to have a good understanding of the following topics:

- [What is a (physical) server](https://example.com)
- [SSH essentials](https://example.com)
- [SSH Config File](https://example.com)
- [Public Key Authentication for SSH](https://example.com)
- [How Secure Shell Works](https://example.com)

For further reference, you can explore:

- [Understanding the SSH Encryption and Connection Process](https://example.com)
- [Secure Shell Wiki](https://example.com)
- [IETF RFC 4251 (Description of the SSH Protocol)](https://example.com)

In addition, you can utilize the `man` or `help` command for more information on specific topics, such as `ssh`, `ssh-keygen`, and `env`.

---

## Learning Objectives

By the end of this project, you should be able to explain the following concepts without external assistance:

### General

1. What is a server?
2. Where do servers typically reside?
3. What is SSH (Secure Shell)?
4. How to create an SSH RSA key pair.
5. How to connect to a remote host using an SSH RSA key pair.
6. The advantages of using `#!/usr/bin/env bash` instead of `/bin/bash`.

---

## Copyright - Plagiarism

Remember that plagiarism is strictly forbidden and will result in removal from the program. Ensure that you come up with solutions for the tasks independently and do not publish any content of this project.

---

## Requirements

### General

- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 20.04 LTS.
- All your files should end with a new line.
- A `README.md` file, at the root of the project folder, is mandatory.
- All your Bash script files must be executable.
- The first line of all your Bash scripts should be `#!/usr/bin/env bash`.
- The second line of all your Bash scripts should be a comment explaining what the script does.

### Your Servers

| Name           | Username | IP         | State     |
| ---------------| -------- | ---------- | --------- |
| 278109-web-01  | ubuntu   | [IP]       | [Not specified] |

---

## Tasks

### 1. Use a Private Key

Write a Bash script that uses SSH to connect to your server using the private key `~/.ssh/school` with the user `ubuntu`.

**Requirements:**

- Use only single-character flags with `ssh`.
- Do not use `-l`.
- You do not need to handle the case of a private key protected by a passphrase.

```bash
sylvain@ubuntu$ ./0-use_a_private_key
ubuntu@server01:~$ exit
Connection to [IP] closed.
sylvain@ubuntu$
```

- **Repo:** [0-use_a_private_key](https://github.com/alx-system_engineering-devops/0x0B-ssh/0-use_a_private_key)

### 2. Create an SSH Key Pair

Write a Bash script that creates an RSA key pair.

**Requirements:**

- The name of the created private key must be `school`.
- The number of bits in the created key should be 4096.
- The created key must be protected by the passphrase `betty`.

```bash
sylvain@ubuntu$ ls
1-create_ssh_key_pair
sylvain@ubuntu$ ./1-create_ssh_key_pair
Generating public/private rsa key pair.
Your identification has been saved in school.
Your public key has been saved in school.pub.
The key fingerprint is:
5d:a8:c1:f5:98:b6:e5:c0:9b:ee:02:c4:d4:01:f3:ba vagrant@ubuntu
The key's randomart image is:
+--[ RSA 4096]----+
|      oo...      |
|      .+.o =     |
|     o  + B +    |
|      o. = O     |
|     .. S = .    |
|      .. .       |
|      E.  .      |
|        ..       |
|         ..      |
+-----------------+
sylvain@ubuntu$ ls
1-create_ssh_key_pair school  school.pub
sylvain@ubuntu$
```

- **Repo:** [1-create_ssh_key_pair](https://github.com/alx-system_engineering-devops/0x0B-ssh/1-create_ssh_key_pair)

### 3. Client Configuration File

Your machine has an SSH configuration file for the local SSH client. Configure it to connect to a server without typing a password, using the private key `~/.ssh/school`.

**Requirements:**

- Configure your SSH client to use the private key `~/.ssh/school`.
- Configure your SSH client to refuse authentication using a password.

```bash
sylvain@ubuntu$ ssh -v ubuntu@[IP]
OpenSSH_6.6.1, OpenSSL 1.0.1f 6 Jan 2014
[... Output truncated for brevity ...]
Authenticated to [IP] ([IP]:22).
[... Output truncated for brevity ...]
ubuntu@magic-server:~$
```

- **Repo:** [2-ssh_config](https://github.com/alx-system_engineering-devops/0x0B-ssh/2-ssh_config)

### 4. Let Me In! (Advanced)

Add the SSH public key provided below to your server so that external users can connect using the `ubuntu` user.

```bash
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5i
