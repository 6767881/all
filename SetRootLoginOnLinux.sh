sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i '/Include/s/^/#/' /etc/ssh/sshd_config
sudo systemctl restart sshd
echo "root:mylsix0.0" | sudo chpasswd
