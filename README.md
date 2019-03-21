# ubuntu-installer

## DESCRIPTION

Easily configure your Ubuntu 18.04 Desktop installation.

## WARNING

You need to use the 2.8+ version which is not release at that time (March, 19th 2019).
You can install the good version using the development version.

```
sudo apt install python-pip
pip install git+https://github.com/ansible/ansible.git@devel
```

## Tools installed

***Tools marked with ✔ are installed by default. You can override the config.yml file to match your needs.***

* ✔ System packages (install with Snap or apt)
    * asciinema
    * autojump
    * ✔ curl
    * direnv
    * ✔ htop
    * httpie
    * jq
    * mosh
    * ✔ peco
    * postman
    * rclone
    * ruby
    * syncthing
    * ✔ tmux
    * tmuxinator (/!\ need tests /!\)
    * ✔ tree
    * yq

* Dev tools
  * ✔ Docker (with official repository)
  * ✔ Docker Compose
  * ✔ Git (with official repository)
  * MySQL Workbench
  * Virtualbox
  * Vagrant
  * kubectl
  * openshift client (oc)
  * aws-cli

* Browsers
  * Chrome (via snap package)

* Shell
  * Zsh & Oh-My-Zsh (/!\ need tests /!\)

* Editor / IDE
  * Atom (via snap)
  * PHPStorm (via snap)
  * Sublime Text (via snap)
  * VSCode (via snap)

* Others
  * FileZilla
  * Pet - Snippets Manager
  * Meet Franz
  * Typora - Markdown Editor

## Quick start

### Requirements

In order to run this script you need to have access to a shell, git (for installation of ansible dev version), unzip and wget.

### Installation

```
wget -O installer.zip https://github.com/jygastaud/ubuntu-installer/archive/<branch>.zip
unzip installer
cd installer
cp config.dist.yml config.yml
```

Edit the config.yml file  
Then

```
./run.sh
```

## Detailed Installation

### Requirements

In order to run this script you need to have access to a shell, unzip and wget and ansible.

### Installation

```
wget -O installer.zip https://github.com/jygastaud/ubuntu-installer/archive/<branch>.zip
unzip installer
cd installer
cp config.dist.yml config.yml
```
Edit the config.yml file  
Then

```
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass
```

## Specific component installation

You can use Ansible tag to run only some part of that playbook.

Examples:

* Install only packages

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass --tag packages
```

* Install only git

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass --tag git
```

* Install only packages

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass --tag packages
```

* Install all `dev-tools`

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass --tag dev-tools
```

## Plan

* Add the following tools
  * Others? Create an issue!
* Update `run.sh` to allow partial installation
