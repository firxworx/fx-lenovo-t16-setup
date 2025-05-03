
# enable firewall
sudo ufw enable

# consider default deny policies...
# sudo ufw default deny incoming
# sudo ufw default deny outgoing 
# sudo ufw allow ssh
# sudo ufw allow 3000
# sudo ufw allow ...

# consider gufw app (apt) for gnome gui

# auto updates
sudo dpkg-reconfigure --priority=low unattended-upgrades

# audit running services and disable unnecessary
sudo systemctl list-unit-files --state=enabled
# sudo systemctl disable <service_name>

# consider disk encryption 

# dev only user
# sudo adduser dex
# sudo usermod -aG docker dex

# su dex
# consider creating a group for developer to help with permissions

# develop in docker --
# Dockerfile
# docker build -t <image_name> .
# docker run -it --rm -v $(pwd):/app -w /app -p <host_port>:<container_port> <image_name>
#
# it interactive termainal
# rm remove container on exit 
# -v mount project directory to container
#
# docker exec -it <container_id_or_name> bash

