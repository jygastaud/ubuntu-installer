# Install ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

# Download galaxy roles
ansible-galaxy install -r requirements.yml --force

# Provisionning
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-sudo-pass
