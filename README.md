# ubuntu-installer

Easily configure your ubuntu installation.

* Dev tools
  * Git
  * MySQL Workbench
  * Vagrant - with the following plugins
    * vagrant-hostmanager
    * vagrant-vbguest
  * Virtualbox
* Browsers
  * Chrome
  * Firefox
* Shell
  * Zsh & Oh-My-Zsh
* Editor / IDE
  * Atom
* Others
  * FileZilla
  * XChat IRC

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

* Add the following tools ?
 * Sublime text
 * PHPStorm
 * IntelliJ
* Add tags for all roles and tools
* Update README to allow partial installation based on tags
