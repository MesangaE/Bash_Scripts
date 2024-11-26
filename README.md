In the world of DevOp automation is very important. It as the power to reduce time spent on a task and even the amount of errors in doing tasks, automating repetitive tasks, configuring servers and managing deployments.Therefore reliability across processes and reduction of manual effort is acheived.Shell Scripting will help streamline processes and manage infrastructure more efficiently. It is the art of writing scripts that run in a command-line.

Scripting is widely used because of their lightweight and rapididty in executing them on almost any system with a shell like Bash(Bourne Again Shell) on most Linux systems.they can easily integrate with other automation tools like Docker jenkins etc and they often easier to implement for simpler tasks compared to weighter programing languages

fundamentals of scripting

#! bin/bash/ tell us the type of shell to be executed

# for comments which are ignored by shell

echo to print in terminal

cat tail head all work with file content

grep is used for search patterns

awk sed for text processing

curl, wget fetching data from the web

Best Practices for writing maintainable scripts

- use comments for your code to explain the logic which is good for clarity, 
- Descriptive variables will improve readability of your code and ensure the names of the variables and functions are meaningful
- organising your code using functions
- errors can easily be handles with conditions
- run scripts with least priviledge
- Test your scripts well enough before deploying them