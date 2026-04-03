# 🔐 Server Hardening Project – icmlabs.site

## 📌 Overview

This project demonstrates a production-level Linux server hardening implementation focused on reducing attack surface and securing critical services.

The system is hardened against:

* Brute-force attacks
* Unauthorized SSH access
* Open port exposure
* Network scanning

---

## 🏗️ Architecture

```
Internet → UFW Firewall → Fail2Ban → Nginx → WordPress
```

---

## 🎯 Key Security Controls

| Control       | Purpose                     |
| ------------- | --------------------------- |
| UFW Firewall  | Restrict incoming traffic   |
| SSH Hardening | Prevent unauthorized access |
| Fail2Ban      | Auto-block malicious IPs    |
| Nmap          | Validate exposed ports      |
| Nginx         | Secure web layer            |

---

## ⚙️ Deployment

```bash
git clone https://github.com/yourusername/server-hardening-project.git
cd server-hardening-project
chmod +x scripts/install.sh
./scripts/install.sh
```

---

## 📂 Project Structure

```
docs/        → Technical documentation  
configs/     → Security configurations  
scripts/     → Automation scripts  
results/     → Validation outputs  
logs/        → Security logs  
```

---

## 🔍 Security Validation

| Check           | Command                               |
| --------------- | ------------------------------------- |
| Open Ports      | `nmap -sS -Pn <IP>`                   |
| Firewall Status | `sudo ufw status verbose`             |
| Fail2Ban Status | `sudo fail2ban-client status`         |
| Active Services | `systemctl list-units --type=service` |

---

## 📊 Sample Results

Results stored in:

* `results/nmap_result.txt`
* `results/ufw_status.txt`
* `results/fail2ban_status.txt`

---

## 📈 Security Outcome

* Reduced exposed ports
* Enforced strict firewall rules
* Prevented brute-force attempts
* Improved system resilience

---

## 📄 License

MIT License

---

## 👤 Author

Muhajirin Saad
