# ubuntu-installer

Easily install and configure your Ubuntu Desktop installation.

## Compatibility Grid

|  Release  |     Status     |  Branch to use  |
|:---------:|:--------------:|:---------------:|
|   22.04   |    Unstable    |      main       |
|   22.04   |     Stable     |      22.04      |
|   20.04   |  Unmaintained  |      20.04      |
|   18.04   |  Unmaintained  |      18.04      |


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

and edit the config.yml file (you can keep only the line you change in that file).

Then

### If you have Ansible already installed

```
./run.sh
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
ansible-playbook playbook.yml -i hosts --user=$(whoami) -e "my_user=$(whoami)" --ask-become-pass --tag packages
```

* Install only git

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) -e "my_user=$(whoami)" --ask-become-pass --tag git
```

* Install all `dev-tools`

```
ansible-playbook playbook.yml -i hosts --user=$(whoami) -e "my_user=$(whoami)" --ask-become-pass --tag dev-tools
```

**Notes: Tags are not be available for every tools.** 

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
    * ✔ NFS
    * ✔ OpenVPN
    * ✔ Parallel
    * ✔ [Peco - Interactive filtering tool](https://github.com/peco/peco)
    * ✔ [Postman](https://www.getpostman.com/)
    * [Rclone - sync files and directories](https://rclone.org/)
    * ruby
    * syncthing
    * ✔ tmux
    * tmuxp
    * traceroute
    * ✔ tree
    * [YQ - Yaml Processor](https://github.com/mikefarah/yq)
    * ✔ xsel

* Dev tools
  * Code versioning
    * ✔ Git (with official repository)
    * Subversion
  * Cloud tools
    * aws-cli
    * [Azure cli](https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli-apt?view=azure-cli-latest)
    * google-cloud-sdk
  * Kubernetes
    * faas
    * helm
    * [Kontena Lens](https://k8slens.dev/)
    * kubectl
    * microk8s
    * openshift client (oc)
  * Java
  * Databases
    * MySQL Workbench
    * mysql-client
  * Nodejs + npm
  * Virtualisation
    * ✔ Docker (with official repository)
    * ✔ Docker Compose (v2)
    * Docker Compose (v1)
    * footloose
    * multipass
    * Virtualbox
    * Vagrant
  * pipenv
  * gitlabci-local
  * asdf (with asdf you can install many tools such as terraform, terragrunt, dagger etc…)
  * tldr

* Browsers
  * ✔ Chrome (via snap package)
  * *Firefox is not installed here as it is include even in minial installation of Ubuntu.*

* Shell
  * ✔ Zsh & Oh-My-Zsh

* Editor / IDE
  * Atom (via snap)
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
  * [Rambox](https://rambox.pro/)
  * Spotify
  * ✔ Typora - Markdown Editor
  * Vokoscreen

* Password managers
  * [LastPass CLI](https://www.lastpass.com)
  * [Bitwarden Desktop](https://bitwarden.com/)
  * [Bitwarden CLI](https://bitwarden.com/help/article/cli/)
  * [Keepassxc](https://keepassxc.org/)

## Others options available

config file also allows you to define :

* your oh_my_zsh configurations (theme, plugins)
* your shell aliases
* your git config

## Plan

* Add the following tools
  * remmina (rdp client)
  * [Azure functions cli](https://docs.microsoft.com/fr-fr/azure/azure-functions/functions-run-local?tabs=linux%2Ccsharp%2Cbash#v2)
  * inkscape
  * confluent cloud (ccloud)
  * hugo (without snap)
  * jungledisk / junglediskcli
  * kompose
  * okteto
  * lab
  * protonvpn / protonvpncli (pip)
  * zoom
  * xclip
  * pip
    * diagrams
    * blastraduius
    * ansible-autodoc
* process
  * activate/configure vscode plugins
  * activate/configure phpstorm plugins
  * find a way to add tags for every tools, so we can install them individually
* Others? Create an issue!
