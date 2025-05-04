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

going into it running this kernel
6.5.0-1016-oem

old and different machine but covers bios considerations
https://download.lenovo.com/pccbbs/mobiles_pdf/thinkpad_p15_gen2_p17_gen2_p1_gen4_ubuntu_20.04_lts_installation_v1.0.pdf

https://discourse.ubuntu.com/t/lenovo-thinkpad-p16-gen2-laptop-wont-accept-24-04/53972/30
THIS IS THE ONE WITH THE "REP"

> Call back Lenovo tech support. Bully my way through two or three phone calls until finding the support rep who tried to reach me a couple of days ago without a callback number, leaving only an email from “Ahmed”. After much persistence got a return call from Ahmed.

first will run as root:

```
sed -i 's/Prompt=[^ ]*/Prompt=lts/' /etc/update-manager/release-upgrades
```


sudo apt update
sudo apt upgrade
sudo apt install update-manager-core <-- didn't do initially
reboot
sudo apt dist-upgrade <-- didn't do initially


```
sudo do-release-upgrade
```

https://askubuntu.com/questions/1412543/how-does-exactly-do-release-upgrade-d-work careful the `-d` flag means dev release

https://discourse.ubuntu.com/t/which-nvidia-driver-on-newly-upgraded-lenovo-laptop/54221