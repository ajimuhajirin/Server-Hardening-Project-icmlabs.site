#!/bin/bash

set -e

echo "🚀 Starting Production-Grade Server Hardening..."

# ==============================
# SYSTEM UPDATE
# ==============================
sudo apt update && sudo apt upgrade -y

# ==============================
# INSTALL PACKAGES
# ==============================
sudo apt install ufw fail2ban nginx nmap -y

# ==============================
# FIREWALL CONFIGURATION
# ==============================
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

sudo ufw --force enable

# ==============================
# FAIL2BAN SETUP
# ==============================
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

# ==============================
# NGINX SETUP
# ==============================
sudo systemctl enable nginx
sudo systemctl start nginx

# ==============================
# LOGGING SNAPSHOT (EVIDENCE)
# ==============================
mkdir -p results

sudo ufw status verbose > results/ufw_status.txt
sudo fail2ban-client status > results/fail2ban_status.txt
ss -tulnp > results/ports.txt

echo "✅ Hardening Completed Successfully"
