#!/bin/bash

# Actualizează lista de pachete și upgrade sistemul
sudo apt-get update
sudo apt-get upgrade -y

# Instalează utilitare de bază
sudo apt-get install -y curl wget git build-essential

# 1. Fail2Ban
sudo apt-get install -y fail2ban
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

# 2. AppArmor
sudo apt-get install -y apparmor apparmor-utils
sudo systemctl enable apparmor
sudo systemctl start apparmor

# 3. Firewall (ufw)
sudo apt-get install -y ufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

# 5. ClamAV
sudo apt-get install -y clamav clamav-daemon
sudo systemctl enable clamav-daemon
sudo systemctl start clamav-daemon

# 6. Tripwire
sudo apt-get install -y tripwire
sudo tripwire --init

# 7. rkhunter (Rootkit Hunter)
sudo apt-get install -y rkhunter
sudo rkhunter --check

# 8. Logwatch
sudo apt-get install -y logwatch
sudo logwatch --detail high --mailto your-email@example.com --range today

# 9. Lynis
sudo apt-get install -y lynis
sudo lynis audit system

# 10. ModSecurity (pentru Apache)
sudo apt-get install -y libapache2-mod-security2
sudo a2enmod security2
sudo systemctl restart apache2

# 11. OpenVAS
sudo apt-get install -y openvas
sudo openvas-setup

# 13. Chkrootkit
sudo apt-get install -y chkrootkit
sudo chkrootkit

# 14. Tiger
sudo apt-get install -y tiger
sudo tiger

# 16. Logrotate
sudo apt-get install -y logrotate
sudo logrotate /etc/logrotate.conf

# 20. debsecan
sudo apt-get install -y debsecan
debsecan

# 21. Nmap
sudo apt-get install -y nmap
nmap localhost

# 22. Logcheck
sudo apt-get install -y logcheck
sudo logcheck

# 26. EncFS
sudo apt-get install -y encfs
sudo encfs ~/encrypted ~/decrypted

# 29. Incron
sudo apt-get install -y incron
sudo systemctl enable incron
sudo systemctl start incron

# 30. sudo (configurare pentru permisiuni precise)
sudo visudo

# Curăță pachetele nefolosite
sudo apt-get autoremove -y
sudo apt-get autoclean -y