# Configuration Management and DevOps Project

## Table of Contents

- [Project Overview](#project-overview)
- [Background Context](#background-context)
- [Resources](#resources)
- [Requirements](#requirements)
- [Tasks](#tasks)
  - [Task 0: Create a File](#task-0-create-a-file)
  - [Task 1: Install a Package](#task-1-install-a-package)
  - [Task 2: Execute a Command](#task-2-execute-a-command)
- [Installation](#installation)
- [Versioning](#versioning)
- [Author](#author)

---

## Project Overview

This project focuses on Configuration Management, DevOps, System Administration, Scripting, and Continuous Integration/Continuous Deployment (CI/CD) using Puppet. The tasks provided aim to familiarize you with essential concepts and skills in these areas.

**Author:** Sylvain Kalache  
**Weight:** 1  
**Project Start:** September 22, 2023, 6:00 AM  
**Project End:** September 23, 2023, 6:00 AM  
**Checker Release:** September 22, 2023, 12:00 PM  

---

## Background Context

During a previous role at SlideShare, the author worked on an auto-remediation tool called Skynet, which monitored, scaled, and fixed Cloud infrastructure. The author utilized a parallel job-execution system called MCollective to execute commands on multiple servers simultaneously. However, a bug in the code sent a "nil" value to the filter method. This resulted in two significant issues:

1. MCollective interpreted "nil" as a command to affect all servers.
2. The action the author sent was to terminate selected servers.

This mistake caused 75% of SlideShare's conversion infrastructure servers to shut down, severely impacting user functionality. Thanks to Puppet, the infrastructure was restored within one hour.

The lesson learned from this incident is that investing time and effort in writing Puppet code for infrastructure management is essential for long-term stability and reliability.

[Read more](https://twitter.com/devopsreact/status/836971570136375296)

---

## Resources

Before starting the tasks, make sure to review the following resources:

- [Intro to Configuration Management](#)
- [Puppet Resource Type: file](#)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](#)
- [Puppet Lint](#)
- [Puppet Emacs Mode](#)

---

## Requirements

### General

- All your files will be interpreted on Ubuntu 20.04 LTS.
- All your files should end with a newline.
- A `README.md` file at the root of the project folder is mandatory.
- Your Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Your Puppet manifests must run without errors.
- Your Puppet manifest files must have the extension `.pp`.

### Note on Versioning

Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

#### Install Puppet

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

You do not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax, which is virtually identical in newer versions of Puppet.

- Puppet 5 Docs

#### Install Puppet Lint

```bash
$ gem install puppet-lint
```

---

## Tasks

### Task 0: Create a File

**Mandatory**

Using Puppet, create a file in `/tmp`.

**Requirements:**

- File path is `/tmp/school`.
- File permission is `0744`.
- File owner is `www-data`.
- File group is `www-data`.
- File contains the text `I love Puppet`.

[Example](#)

### Task 1: Install a Package

**Mandatory**

Using Puppet, install Flask from pip3.

**Requirements:**

- Install Flask.
- Version must be `2.1.0`.

[Example](#)

### Task 2: Execute a Command

**Mandatory**

Using Puppet, create a manifest that kills a process named `killmenow`.

**Requirements:**

- Must use the `exec` Puppet resource.
- Must use `pkill`.

[Example](#)

---

## Installation

To complete these tasks, follow the installation instructions provided in the respective task descriptions.

---

## Versioning

Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled. No version upgrades are necessary for this project.

---

## Author

**Sylvain Kalache**  
[LinkedIn](#) | [Twitter](https://twitter.com/devopsreact/status/836971570136375296)

---

**Note:** This README provides an overview of the project, its context, requirements, and tasks. Please refer to the specific task descriptions for detailed instructions on each task.
