# Jenkins Guide

## Installing Jenkins

*Add repository key*
`$ wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -`

*Add Debian package repo addresss to __sources.list__*
`$ sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'`

*Update the apt repo*
`$ sudo apt update`

*Install jenkins*
`$ sudo apt install jenkins`

## Starting Jenkins

*Start jenkins with systemctl*
$ sudo systemctl status jenkins

If jenkins has started, the following output will show:

```bash
 jenkins.service - Jenkins Continuous Integration Server
     Loaded: loaded (/lib/systemd/system/jenkins.service; enab>
     Active: active (running) since Sun 2022-03-13 22:23:11 +0>
   Main PID: 841 (java)
      Tasks: 45 (limit: 19125)
     Memory: 839.0M
     CGroup: /system.slice/jenkins.service
             └─841 /usr/bin/java -Djava.awt.headless=true -jar>
```
