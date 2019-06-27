# background-script
A script to run stuff in the background, even if you disconnect from the server

Usage:

1. apt install moreutils
2. Modify _job.sh to run any long-running commands you wish to execute
3. ./run.sh
4. View the output in job.log

Advantages:

- The entire log of the output is saved to a log file, adding timestamps in front of each line.

Alternatives:

- nohup
- byobu
- tmux
- screen
- disown (this script uses disown behind the scenes)

