# Install ansible
# sudo apt-add-repository ppa:ansible/ansible
# sudo apt-get update
# sudo apt-get install ansible

# We use the snap module with will be available in 2.8
sudo apt install python-pip
pip install git+https://github.com/ansible/ansible.git@devel

# Download galaxy roles
ansible-galaxy install -r requirements.yml --force

# Provisionning
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass
