# Linux troubleshooting commands
# search for available packages
apt-cache search xfce
# List installed packages
apt list --installed
# troubleshoot firewall issues
# view firewall status
sudo iptables -L
# Add new rule
sudo iptables -A INPUT -p tcp --dport 8888 -j ACCEPT
# view process using a port
lsof -i :8888
# kill a process that is hung or won't quit normally
kill 1747
# List running processes
ps -A
# All kinds of neat network stuff
man nc
# OUTPUT - NAME localhost:8888 means the service is listening on the loopback interface only
# COMMAND   PID   USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
# jupyter-n 347 ubuntu    3u  IPv4  93812      0t0  TCP localhost:8888 (LISTEN)
#
# Find a file within a directory
sudo find -name jupyter_notebook_config.py
# list all files including hidden
ls -la
# List the biggest files/directories in a directory
du -hsx * | sort -rh | head -5
# Find the most recently modified file
ls -Art | head -n1
# Find the most recently modified directory
ls -t | head -n1
# create a file in a downstream directory
touch .ssh/authorized_keys
# View uptime
uptime