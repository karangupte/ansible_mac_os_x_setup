#!/bin/bash

working_dir=$(pwd)

# Install pip
sudo easy_install pip

# Install VirtualEnv
pip install Virtualenv

# Create a virtual environment and activate it 
mkdir -p ~/VirtualEnvs
cd ~/VirtualEnvs
if [ ! -e ~/VirtualEnvs/ansible_venv ]
then  
    virtualenv -p python3 ansible_venv
fi
. ansible_venv/bin/activate

# Install ansible 
pip install ansible --upgrade

# Run the ansible playbook
cd $working_dir
ansible-playbook playbook.yml