# Verification Guide

## 1. Scan Open Ports
nmap -sS -Pn <SERVER_IP>

Expected:
Only SSH, HTTP, HTTPS ports are open

---

## 2. Firewall Check
sudo ufw status verbose

Expected:
Incoming traffic is denied by default

---

## 3. Fail2Ban Status
sudo fail2ban-client status

Expected:
Active jail with banned IPs

---

## 4. Check Active Services
systemctl list-units --type=service

---

## 5. Check Logs
cat /var/log/auth.log
cat /var/log/fail2ban.log
