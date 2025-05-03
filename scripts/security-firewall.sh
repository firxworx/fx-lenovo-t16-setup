
# ensure /etc/default/ufw has IPV6=yes

# enable firewall
sudo ufw enable

# consider default deny policies...
sudo ufw default deny incoming
sudo ufw default allow outgoing

# for more hardened setup e.g. server
# sudo ufw default deny outgoing

# list applications with named configuration profiles (such as 'ssh') 
sudo ufw app list


# sudo ufw default deny incoming
# sudo ufw default deny outgoing 
# sudo ufw allow ssh
# sudo ufw allow 3000
# sudo ufw allow ...

# if ssh server enabled rate limit it 

# if ssh server enabled be sure to lock config down plus rate-limit with firewall:
# sudo ufw limit ssh

# consider gufw app (apt) for gnome gui

