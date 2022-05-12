# Runner Install
sudo apt update

mkdir actions-runner && cd actions-runner

curl -o actions-runner-linux-x64-2.291.tar.gz -L https://github.com/actions/runner/releases/download/v2.291.1/actions-runner-linux-x64-2.291.tar.gz

echo "1bde3f2baf514adda5f8cf2ce531edd2f6be52ed84b9b6733bf43006d36dcd4c  actions-runner-linux-x64-2.291.1.tar.gz" | shasum -a 256 -c

tar xzf ./actions-runner-linux-x64-2.291.tar.gz

./config.sh --url https://github.com/shariprasath95/test9 --token AUXKXNZV6SDA7E2TVR2NLMTCPTVB2

./run.sh

# Ansible Install
sudo apt install python3-pip
sudo python3 -m pip install ansible

# User creation
sudo useradd -m odoo14
sudo passwd odoo14

# Required applications
sudo apt install sshpass -y

# PasswordAuthentication yes
sudo vi /etc/ssh/sshd_config 

sudo systemctl restart sshd
