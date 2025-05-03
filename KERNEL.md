The hardware was ubuntu certified for Ubuntu 22.04 LTS
6.1.0-1020-oem was tested kernel per Ubuntu
https://ubuntu.com/certified/202309-32045

get kernel version with `uname`:

```sh
uname -r

hostnamectl | grep Kernel
```

right now running `6.5.0-1016-oem`

search with `apt search <keyword>`

So linux-6.8.0 taken out?
when did the grub update


a suggestion from linux mint forum to check kernels
apt install linux-oem-22.04

https://forums.linuxmint.com/viewtopic.php?t=381232 about laptop dying in sleep 
Issue solved by removing firmware-sof-signed package and installed again from software manager.

these are about gen 1 but may apply to gen 2

https://forums.linuxmint.com/viewtopic.php?f=42&p=2226267#p2226267

https://www.reddit.com/r/thinkpad/comments/1b2j4q5/t14s_gen_4_amd_on_linux_significant_battery_drain/?rdt=50841

def see if bios update 
also what is this `s2idle`

https://www.reddit.com/r/LinuxOnThinkpad/comments/1b326gq/t14s_gen_4_amd_on_linux_significant_battery_drain/

Flipping ec_no_wakeup to 1 at runtime via:

echo 1 | sudo tee /sys/module/acpi/parameters/ec_no_wakeup
Or at boot with a kernel command line parameter:

acpi.ec_no_wakeup=1
...fixed the massive s2idle battery drain on my T14 Gen 4 AMD w/Debian 12 & the kernel from backports.

https://community.frame.work/t/massive-battery-drain-when-laptop-is-shut/48563/2
https://www.youtube.com/watch?v=OHKKcd3sx2c apparently LTT video on this 

https://forums.lenovo.com/t5/ThinkPad-X-Series-Laptops/battery-drains-with-lid-closed/m-p/5258862