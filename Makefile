# Makefile for executing Ansible playbook

# Set the Ansible playbook and inventory files
PLAYBOOK = playbook.yml
INVENTORY = inventory.yml
KEY_FILE = ~/.ssh/ansible

# Define the target for executing the Ansible playbook
run:
	ansible-playbook $(PLAYBOOK) -i $(INVENTORY) --key-file $(KEY_FILE) --ask-become-pass -vvvv

# Optional targets for cleaning up or other tasks
clean:
	# Add cleanup commands here if needed

.PHONY: run clean