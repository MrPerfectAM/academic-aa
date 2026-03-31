# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Aastik@ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Aastik
Home Directory:     /home/Aastik
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 17:28:32 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Aastik@ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                  
================================================================================
Status: git is INSTALLED on this Debian/Ubuntu system.
Version: 2.34.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: A free and open source distributed version control system.
 - Linux: A free and open source operating system.
 - Bash: A free and open source Unix shell and command-line interpreter.
 - Open Source: A development methodology that emphasizes the availability of source code.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Aastik@ubuntu-server:~/Git$ ./03-auditor.sh
   Size Permissions Owner    Directory
   24K  755       root     /etc
  1.2M  644       root     /var/log
  8.0K  755       root     /usr/bin/git
  160K  700       Aastik   /home/Aastik/.git
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Aastik@ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
Count of 'error' in /var/log/syslog: 5
Mar 31 17:23:45 ubuntu-server kernel: [error] usb 1-1: device descriptor read/64, error -110
Mar 31 17:24:10 ubuntu-server kernel: [error] usb 1-1: device descriptor read/64, error -110
Mar 31 17:25:05 ubuntu-server kernel: [error] usb 1-1: device descriptor read/64, error -110
Mar 31 17:25:45 ubuntu-server kernel: [error] usb 1-1: device descriptor read/64, error -110
Mar 31 17:26:20 ubuntu-server kernel: [error] usb 1-1: device descriptor read/64, error -110
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Aastik@ubuntu-server:~/Git$ ./05-manifesto.sh
What is your name? Aastik
What is your favorite open-source software? Linux
Why do you support open-source software? Because it provides freedom to study, change, and distribute.
Manifesto saved to Aastik.txt
```
