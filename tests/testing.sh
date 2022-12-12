#!/bin/bash
# Test S3 provisioned with Ansible
cd $(dirname "$0") && cd ..
echo "Checking syntax"
ansible-playbook -i /data/ansible-s2fs-fuse/playbook.yml --connection=local --syntax-check
echo "Running role"
ansible-playbook -i  /data/ansible-s2fs-fuse/playbook.yml --connection=local
echo "Checking idempotence"
ansible-playbook -i  /data/ansible-s2fs-fuse/playbook.yml --connection=local | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)
echo "Running tests"
ansible-playbook -i  /data/ansible-s2fs-fuse/playbook.yml --connection=local
