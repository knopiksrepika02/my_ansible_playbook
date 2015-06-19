#!/bin/sh

# Host
cat << 'EOF' > hosts
localhost
EOF

# RoleList
cat << 'EOF' > ansibleRules  
leonelgalan.node
ANXS.python
mbasanta.pip
calebwoods.brightbox_ruby
debops.java
EOF

# PlayBook
cat << 'EOF' > main.yml
- hosts: all
  sudo: yes
  roles:
    - { role: leonelgalan.node }
    - { role: ANXS.python }
    - { role: mbasanta.pip }
    - { role: calebwoods.brightbox_ruby }
    - { role: debops.java }
  tasks:
    # DevTools
    - apt: name=w3m
    - apt: name=vim
    - apt: name=git
    - npm: name=yo global=yes
    - npm: name=grunt-cli global=yes
    - gem: name=compass
    # SNS
    - pip: name=rainbowstream
EOF

sudo apt-get install software-properties-common && \
sudo apt-add-repository ppa:ansible/ansible && \
sudo apt-get update && \
sudo apt-get install -y ansible && \
ansible-galaxy install --force -r ansibleRules && \
ansible-playbook --connection=local  -i hosts main.yml 


