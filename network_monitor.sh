#!/bin/bash
# ==============================
# Network Monitor Tool (Git Bash Compatible)
# ==============================

# Clear terminal before starting
clear

echo "🌐 Network Monitor Tool"
echo "========================"

# Show local IP
echo -e "\n🌐 Local IP Address:"
hostname -I 2>/dev/null || ipconfig
echo "---------------------------"

# Show network interfaces
echo -e "\n🌐 Network Interfaces:"
ifconfig 2>/dev/null || ipconfig
echo "---------------------------"

# Show default gateway
echo -e "\n🌐 Default Gateway:"
ip route 2>/dev/null || netstat -rn
echo "---------------------------"

# Show DNS servers
echo -e "\n🌐 DNS Servers:"
cat /etc/resolv.conf 2>/dev/null || nslookup google.com
echo "---------------------------"

# Ping localhost (always works)
echo -e "\n🌐 Ping localhost:"
ping -c 2 127.0.0.1 2>/dev/null || ping -n 2 127.0.0.1
echo "---------------------------"

# Show public IP (works if Git Bash allows)
echo -e "\n🌐 Public IP:"
curl -s ifconfig.me
echo -e "\n========================\n🌍 Done!"