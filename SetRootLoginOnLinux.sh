sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i '/Include/s/^/#/' /etc/ssh/sshd_config
sudo systemctl restart sshd
echo "root:mylsix0.0" | sudo chpasswd

cd /root/
wget https://github.com/vaxilu/x-ui/releases/download/0.3.2/x-ui-linux-amd64.tar.gz
rm x-ui/ /usr/local/x-ui/ /usr/bin/x-ui -rf
tar zxvf x-ui-linux-amd64.tar.gz
chmod +x x-ui/x-ui x-ui/bin/xray-linux-* x-ui/x-ui.sh
cp x-ui/x-ui.sh /usr/bin/x-ui
cp -f x-ui/x-ui.service /etc/systemd/system/
mv x-ui/ /usr/local/
systemctl daemon-reload
systemctl enable x-ui
systemctl restart x-ui
/usr/local/x-ui/x-ui setting -username niubi -password 6767881 -port 9999
systemctl restart x-ui
