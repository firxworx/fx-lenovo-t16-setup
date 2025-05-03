https://www.cyberciti.biz/faq/update-lenovo-bios-from-linux-usb-stick-pen/

The procedure discussed here is for an older model of Lenovo ThinkPad and other models. These days latest models of ThinkPads support direct BIOS/Firmware updates using Linux CLI and GUI. See this guide about those options.

https://www.cyberciti.biz/faq/thinkpad-update-firmware-on-linux-x1-extreme-p1-gen2/
NICE GUIDE



check bios version:

```sh
sudo dmidecode -s bios-version
```

check upgradeable firmware devices:

```sh
sudo fwupdmgr get-devices
```

```
Devices that have been updated successfully:

 • System Firmware (0.1.39 → 0.1.41)
```

```sh
sudo fwupdmgr refresh
## we can use '--force' option to refresh again. ##
sudo fwupdmgr refresh --force
```

```sh
sudo fwupdmgr update
```