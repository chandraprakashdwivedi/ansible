#!/bin/bash

# Script to create ansible playbook directories

# define your roles here
roles=(common web)
directories=(tasks handlers files templates)

# create playbook
mkdir roles
mkdir global_vars
touch global_vars/all
touch hosts main.yml README.md

for i in ${roles[@]}; do
  for j in ${directories[@]}; do
    mkdir -p roles/${i}/${j}
  done
touch  roles/${i}/{handlers,tasks}/main.yml
done
exit 0
