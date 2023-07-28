## alx-system_engineering-devops
# Processes and Signals

This repository contains a series of Bash scripts that demonstrate various aspects of processes and signals handling.

## 0. What is my PID

This script displays its own PID.

## 1. List your processes

This script displays a list of currently running processes, showing all processes for all users, including those without a TTY, and displaying them in a user-oriented format with process hierarchy.

## 2. Show your Bash PID

This script displays lines containing the word "bash," allowing the user to easily get the PID of their Bash process.

## 3. Show your Bash PID made easy

This script displays the PID and process name of processes whose name contains the word "bash," without using the `ps` command.

## 4. To infinity and beyond

This script displays "To infinity and beyond" indefinitely, with a 2-second delay between each iteration.

## 5. Don't stop me now!

This script stops the process started by "4-to_infinity_and_beyond" using the `kill` command.

## 6. Stop me if you can

This script stops the process started by "4-to_infinity_and_beyond" without using `kill` or `killall`.

## 7. Highlander

This script displays "To infinity and beyond" indefinitely with a 2-second delay between each iteration and responds with "I am invincible!!!" when receiving a SIGTERM signal.

## 67. Stop me if you can

This script is a copy of "6-stop_me_if_you_can" but kills the process started by "7-highlander" instead of "4-to_infinity_and_beyond."

## 8. Beheaded process

This script kills the process "7-highlander."

**Note**: Each script has its specific usage and is designed to showcase different aspects of process handling and signal management in Bash. Refer to each script's respective comments for further details and examples.
