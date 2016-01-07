# ubuntu-installer

## WARNING NEED TESTS

Easily configure your ubuntu installation.

***Tools marked with ✔ are installed by default. You can override the config.yml file to match your needs.***

* ✔ System packages
  * ✔ tree
  * ✔ xclip
  * ✔ curl
  * ✔ tmux
  * ✔ screen
* Dev tools
  * ✔ Git
  * MySQL Workbench
  * ✔ Vagrant (and Virtualbox)
      * ✔ vagrant-hostmanager
      * ✔ vagrant-vbguest
* Browsers
  * ✔ Chrome
  * ✔ Firefox
* Shell
  * Zsh & Oh-My-Zsh
* Editor / IDE
  * ✔ Atom
  * Sublime Text
  * PHPStorm
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

## Detailed Installation

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
  * IntelliJ
  * Others? Create an issue!
* Update README to allow partial installation based on tags
