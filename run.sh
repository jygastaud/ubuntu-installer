#!/usr/bin/env bash

set -o pipefail

#--- Handle errors ---#
error() {
  local name="$1"
  echo "Dependency "$name" not found."
  if [[ "${name}" == "ansible" ]];
  then
      echo "Retry to run with --ansible option if you want an automatic install,"
      echo "or install ansible by yourself first."
  fi
  exit 1
}

install-ansible() {
  echo "---> Install ansible - start"
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get install ansible
  echo "---> Install ansible - done"
}

install-ansible-dev() {
  # We use the snap module with will be available in 2.8
  sudo apt install python-pip
  pip install git+https://github.com/ansible/ansible.git@devel
}

install-dependencies() {
  local ansiblegalaxy="$(which ansible-galaxy)"
  local ansibleplaybook="$(which ansible-playbook)"

  if [[ -n "${ansiblegalaxy}" ]] && [[ -n "${ansibleplaybook}" ]]; then
      echo "---> Get dependencies"
      # Download galaxy roles
      ${ansiblegalaxy} install -r requirements.yml --force
  else
      error ansible
  fi
}

install-tools () {
  local ansiblegalaxy="$(which ansible-galaxy)"
  local ansibleplaybook="$(which ansible-playbook)"

  if [[ -n "${ansiblegalaxy}" ]] && [[ -n "${ansibleplaybook}" ]]; then
      echo "---> Install or Update computer - start"
      # Provisionning
      ${ansibleplaybook} playbook.yml -i hosts --user=$(whoami) -e my_user=$(whoami) --ask-become-pass -vvvv
      echo "---> Install or Update computer - done"
  else
      error ansible
  fi
}

main() {
  while [[ "$#" -gt 0 ]]
  do
    case $1 in
      --ansible)
        install-ansible
        ;;
      --ansible-dev)
        install-ansible-dev
        ;;
    esac
    shift
  done

  [ ! "$1" == "--nodeps" ] || install-dependencies
  install-tools
}

main "$@"
