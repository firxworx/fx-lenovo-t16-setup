This computer came with upgrades set to “Never”

https://discourse.ubuntu.com/t/lenovo-thinkpad-p16-gen2-laptop-wont-accept-24-04/53972/4

https://ubuntuforums.org/showthread.php?t=2499617&p=14204722

https://forums.linuxmint.com/viewtopic.php?t=410460
https://forums.lenovo.com/t5/Ubuntu/ThinkPad-T14-Gen-5-AMD-Ubuntu-24-04-problem-with-WiFi/m-p/5336289

https://www.cyberciti.biz/faq/how-to-upgrade-from-ubuntu-22-04-lts-to-ubuntu-24-04-lts/

```sh
sudo apt update
sudo apt list --upgradable | more
sudo apt upgrade

```

Use release upgrader:

```sh
apt install ubuntu-release-upgrader-core

```

Ensure prompt lint in `/etc/update-manager/release-upgrades ` is set to "lts".
The Lenovo default is "never".

```sh
sudo sed -i 's/Prompt=[^ ]*/Prompt=lts/' /etc/update-manager/release-upgrades
```

If setting up over SSH open up the fallback 1022 port range per cyberciti:

```sh
sudo ufw allow 1022/tcp comment 'Open port ssh TCP/1022 as failsafe for upgrades'
sudo ufw status

# or iptables
#sudo /sbin/iptables -I INPUT -p tcp --dport 1022 -j ACCEPT
```

And if on EC2 or Lightsail ensure 1022 TCP is open.

Upgrade to LTS:

```sh
sudo do-release-upgrade -d

# or a specific version
sudo do-release-upgrade -p '24.04.1 LTS'

```


EXCELLENT GUIDE
https://linuxiac.com/how-to-upgrade-to-ubuntu-24-04-lts-from-ubuntu-22-04-lts/

https://www.reddit.com/r/thinkpad/comments/1dvw8gp/thinkpad_t14_gen_5_amd_on_ubuntu_2204_2404/
battery drain no s3 sleep
SEE T14 Gen 5 hacks MANY APPLICABLE
GREAT COMMENT

