# Install ansible

# Download galaxy roles
ansible-galaxy install -r requirements.yml --force

# Provisionning
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-sudo-pass
