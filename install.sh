9#!/data/data/com.termux/files/usr/bin/bash
clear

echo -e "\e[32m"
cat << "EOF"

EOF
echo -e "\e[0m"
"+-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+"
        "|M|e|t|a|s|p|l|o|i|t| |i|n| |T|e|r|m|u|x|"
        "+-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+"
        "+-+-+ +-+-+-+-+-+-+-+-+-+-+"
        "|b|y| |I|t|s|R|u|d|r|o|n|i|l|"
        "+-+-+ +-+-+-+-+-+-+-+-+-+-+-+"
sleep 2

echo "[+] Updating Termux..."
pkg update -y && pkg upgrade -y

echo "[+] Installing Dependencies..."
pkg install -y root-repo x11-repo tur-repo unstable-repo
pkg install -y git ruby python clang make wget openssl openssl-tool ncurses-utils binutils

echo "[+] Cloning Metasploit Installer..."
git clone https://github.com/gushmazuko/metasploit_in_termux

cd metasploit_in_termux
chmod +x metasploit.sh

echo "[+] Installing Metasploit Framework..."
./metasploit.sh

echo ""
echo "========================================="
echo " Metasploit Installed Successfully!"
echo " Run using: msfconsole"
echo " Brand: ItsRudronil MSF Installer"
echo "========================================="
