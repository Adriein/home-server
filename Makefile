# Makefile for executing Ansible playbook

# Set the Ansible playbook and inventory files
PLAYBOOK_FOLDER = playbooks
PLAYBOOK = tibia-mkt-playbook.yml
INVENTORY = inventory.yml
KEY_FILE = ~/.ssh/ansible

# Define the target for executing the Ansible playbook
run:
	@cd ./$(PLAYBOOK_FOLDER); ansible-playbook $(PLAYBOOK) -i $(INVENTORY) --key-file $(KEY_FILE) --ask-become-pass

.PHONY: run clean