# Holberton School System Engineering DevOps Specialization
## 0x15. API
### Author
Sylvain Kalache, Co-Founder at Holberton School
### Project Overview
This project is designed to help you learn about APIs and Python scripting while working with employee data. You will access employee data via a REST API, organize and export it to different data structures, and create CSV and JSON files based on the gathered data. The project consists of four tasks, each building upon the previous one to achieve the learning objectives.

### Learning Objectives
At the end of this project, you will be able to:

- Explain what Bash scripting should not be used for
- Understand what an API is
- Comprehend the concept of a REST API
- Learn about microservices
- Know the CSV and JSON formats
- Follow Pythonic naming style for packages, modules, classes, variables, functions, and constants

### Requirements
- Allowed editors: vi, vim, emacs
- All files will be interpreted/compiled on Ubuntu 20.04 LTS using Python 3 (version 3.8.5)
- All files must end with a new line
- The first line of all Python files should be exactly `#!/usr/bin/python3`
- Libraries imported in Python files must be organized in alphabetical order
- A README.md file, at the root of the project folder, is mandatory
- Your code should follow PEP 8 style guidelines
- All Python files must be executable
- The length of your files will be tested using the `wc` command
- All modules should have documentation (`python3 -c 'print(__import__("my_module").__doc__)`)
- Your code should not be executed when imported (by using `if __name__ == "__main__":`)

### Tasks
1. **Gather data from an API**
   - Write a Python script that, using a REST API, for a given employee ID, returns information about their TODO list progress.
   - Requirements:
     - Use `urllib` or `requests` module
     - The script must accept an integer as a parameter, which is the employee ID
     - The script must display on the standard output the employee TODO list progress in the specified format

2. **Export to CSV**
   - Extend your Python script from Task #1 to export data in CSV format.
   - Requirements:
     - Records all tasks that are owned by the employee
     - Format must be: `"USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"`
     - File name must be: `USER_ID.csv`

3. **Export to JSON**
   - Extend your Python script from Task #1 to export data in JSON format.
   - Requirements:
     - Records all tasks that are owned by the employee
     - Format must be: `{ "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, {...}], ... }`
     - File name must be: `USER_ID.json`

4. **Dictionary of list of dictionaries**
   - Extend your Python script to export data in JSON format, but now it should include records for all employees.
   - Requirements:
     - Records all tasks from all employees
     - Format must be: `{ "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, {...}], "USER_ID": [ {...}, ...], ... }`
     - File name must be: `todo_all_employees.json`

### Copyright and Plagiarism
You are tasked with coming up with solutions for the tasks yourself to meet the learning objectives. You are not allowed to publish any content of this project. Any form of plagiarism is strictly forbidden and will result in removal from the program.

### Resources
Before starting this project, it is recommended that you read or watch the following resources:

- [Friends don’t let friends program in shell script](https://blog.sourcerer.io/friends-dont-let-friends-program-shell-script-1e4f082a99b6)
- [What is an API](https://www.howtogeek.com/343877/what-is-an-api)
- [What is a REST API](https://restfulapi.net)
- [What are microservices](https://microservices.io)
- [PEP 8 Python style](https://www.python.org/dev/peps/pep-0008) - Having clean code respecting the style guide is appreciated in the industry.
- Follow Pythonic naming conventions for package, module, class, variable, function, and constant names.
