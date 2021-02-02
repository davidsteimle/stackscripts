# Stack Scripts

Linode Stack Scripts for quick deployment of servers with the software desired.

## What Are Stack Scripts?

At their simplest, Stack Scripts are installation/configuration bash scripts run on a system when it is provisioned.

All scripts below will log to ``/root/stackscript.log`` and end with ``*** stack script complete ***``.

## RDP Capable Systems

These installations can take a while, and will continue in the background while you have logon access to the system.

If you want to follow the log for completion, when logged on execute:

```sh
tail -f /root/stackscript.log
```

### Ubuntu 20.10

* [ubuntu_cinnamon.sh](https://github.com/davidsteimle/stackscripts/blob/main/ubuntu_cinnamon.sh) installs with the Cinnamon desktop
* [ubuntu_gnomesession.sh](https://github.com/davidsteimle/stackscripts/blob/main/ubuntu_gnomesession.sh) installs with the Gnome-Session desktop

### Debian 10

* [debian_gnomesession.sh](https://github.com/davidsteimle/stackscripts/blob/main/debian_gnomesession.sh) installs with the Gnome-Session desktop
