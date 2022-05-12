#!/bin/bash
cd ansible
ansible-playbook -e target=${{env.target}} -i inventry.txt deploy.yml