#!/bin/bash

# Script to create ansible playbook directories

playbook=$1
mkdir $playbook

# define your roles here
roles=(common web)
directories=(tasks handlers files templates)

# create playbook
mkdir $playbook/roles
mkdir $playbook/group_vars
touch $playbook/global_vars/all
touch $playbook/{hosts,main.yml,README.md}

for i in ${roles[@]}; do
  for j in ${directories[@]}; do
    mkdir -p $playbook/roles/${i}/${j}
  done
touch  $playbook/roles/${i}/{handlers,tasks}/main.yml
done
exit 0
