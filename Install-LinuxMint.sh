# LINUX MINT

sudo apt update
sudo apt -y upgrade 
sudo apt -y dist-upgrade
sudo apt autoremove

df
free -h
swapon

# NETWORKTOOLS

echo "Install networktools? [Y/N]"
read networktools
if [[ ! $networktools =~ ^[Yy]$ ]]
then
  sudo apt install -y traceroute
  sudo apt install -y nmap
  sudo apt install -y iftop
  sudo apt install -y wireshark
fi

# FIREWALL

sudo apt install -y ufw
sudo ufw logging on
sudo ufw logging medium
sudo ufw enable
sudo ufw status verbose
# sudo ufw allow 80,443,25,587,465,143,993/tcp
# cat /var/log/ufw.log

# REMOVE

sudo apt -y --purge autoremove thunderbird  thunderbird-gnome-support 

# CHROME

sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt update
sudo apt install -y google-chrome-stable

# VSCODE

sudo apt -y install wget apt-transport-https
sudo apt update
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
cat  /etc/apt/sources.list.d/vscode.list
sudo apt update 
sudo apt -y install code

# VLC

sudo apt install -y vlc

# GIMP

sudo apt install -y gimp


