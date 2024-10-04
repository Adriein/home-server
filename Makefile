# Makefile for executing Ansible playbook

# Set the Ansible playbook and inventory files
PLAYBOOK = tibia-mkt-playbook.yml
INVENTORY = inventory.yml
KEY_FILE = ~/.ssh/ansible
ANSIBLE_VAULT_ENC = @ansible_vault.enc

# Define the target for executing the Ansible playbook
run:
	ansible-playbook $(PLAYBOOK) -i $(INVENTORY) -e ${ANSIBLE_VAULT_ENC} --key-file $(KEY_FILE) --ask-become-pass --vault-password-file ansible_vault_password.txt

.PHONY: run clean