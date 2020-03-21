# ubuntu-installer

Easily install and configure your Ubuntu 18.04 Desktop installation.

## Requirements

In order to run the the following installation process and script you need to have :

* access to a shell
* unzip
* wget
* Ansible 2.8+ (we handled the installation via the run.sh script)

### Installation

```
wget -O installer.zip https://github.com/jygastaud/ubuntu-installer/archive/<branch>.zip
unzip installer
cd ubuntu-installer-<branch>
cp default.config.yml config.yml
```

and edit the config.yml file

Then

### If you have Ansible already installed

```
./run.sh --ansible
```

### If you want to install Ansible first

```
./run.sh --ansible
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

* Install all `dev-tools`

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) --ask-become-pass --tag dev-tools
```


## Tools managed and installed by default

***Tools marked with ✔ are installed by default. You can override the config.yml file to match your needs.***

* ✔ System packages (install with Snap or apt)
    * [asciinema - Record terminal sesions](https://asciinema.org/)
    * ✔ [autojump - better cd](https://github.com/wting/autojump)
    * ✔ [Bat - Cat clone](https://github.com/sharkdp/bat)
    * ✔ curl
    * ✔ [direnv - Easy management of local environment variables](https://direnv.net/)
    * expect
    * ✔ htop
    * ✔ [httpie - HTTP Client](https://github.com/jakubroztocil/httpie)
    * ✔ [JQ - Json Processor](https://github.com/stedolan/jq)
    * [Mosh - Mobile Shell](https://mosh.org/)
    * ✔ nfs
    * ✔ OpenVPN
    * ✔ Parallel
    * ✔ [Peco - Interactive filtering tool](https://github.com/peco/peco)
    * ✔ [Postman](https://www.getpostman.com/)
    * [Rclone - sync files and directories](https://rclone.org/)
    * ruby
    * syncthing
    * ✔ tmux
    * ✔ tree
    * [YQ - Yaml Processor](https://github.com/mikefarah/yq)
    * ✔ xsel

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
  * google-cloud-sdk
  * multipass
  * footloose
  * helm
  * subversion
  * faas
  * microk8s

* Browsers
  * ✔ Chrome (via snap package)
  
*Firefox is not installed here as it is include even in minial installation of Ubuntu.*

* Shell
  * ✔ Zsh & Oh-My-Zsh

* Editor / IDE
  * Atom (via snap)é
  * PHPStorm (via snap)
  * Sublime Text (via snap)
  * VSCode (via snap)

* Others
  * Calibre
  * Claat
  * [Chezmoi - dotfiles manager](https://github.com/twpayne/chezmoi)
  * FileZilla
  * InSync - Google Drive Synchro
  * [Pet - snippet manager](https://github.com/knqyf263/pet)
  * ✔ Typora - Markdown Editor
  * Spotify

* Password managers
  * [LastPass CLI]()
  * [Bitwarden Desktop]()
  * [Bitwarden CLI]()

## Others options available

config file also allows you to define :

* your oh_my_zsh configurations (theme, plugins)
* your shell aliases
* your git config

## Plan

* Add the following tools
  * Azure cli
  * Others? Create an issue!
