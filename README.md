# ubuntu-installer

Easily configure your ubuntu installation.

* Virtualbox
* Vagrant - with the following plugins
  * vagrant-hostmanager
  * vagrant-vbguest 
* Zsh & Oh-My-Zsh
* Git
* Firefox
* Chrome

## Quick start

### Requirements

In order to run this script you need to have access to a shell, unzip and wget.

### Installation

```
wget -O installer.zip https://github.com/jygastaud/ubuntu-installer/archive/master.zip
unzip installer
cd installer
./run.sh
```

## Detailled Installation

### Requirements

In order to run this script you need to have access to a shell, unzip and wget and ansible.

### Installation

```
wget -O installer.zip https://github.com/jygastaud/ubuntu-installer/archive/master.zip
unzip installer
cd installer
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-sudo-pass
```

## Plan

* Add the following tools
 * Atom and/or Sublime text
 * MySQL Workbench
 * XChat IRC
 * FileZilla
* Add tags for all roles
* Update README to allow partial installation based on tags
