#!/data/data/com.termux/files/usr/bin/bash

clear
echo "[•] Starting ItsRudronil MSF Installer..."
sleep 1

pkg update -y
pkg upgrade -y

pkg install -y root-repo x11-repo tur-repo unstable-repo
pkg install -y git ruby python clang make wget openssl openssl-tool ncurses-utils binutils

git clone https://github.com/gushmazuko/metasploit_in_termux
cd metasploit_in_termux
chmod +x metasploit.sh
./metasploit.sh

echo ""
echo "[✔] Metasploit Installed Successfully!"
echo "[✔] Run: msfconsole"
echo "[✔] Brand: ItsRudronil MSF Installer"
