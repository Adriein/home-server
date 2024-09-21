Inside your master ansible node

ssh-keygen -t ed25519 -C "ansible"

ssh-copy-id -i ~/.ssh/ansible.pub [server-ip]

Execute the playbook

ansible-playbook playbook.yml -i inventory.yml --key-file ~/.ssh/ansible --ask-become-pass