diff:
	sudo ansible-playbook playbook.yml --inventory inventory --diff --check

apply:
	sudo ansible-playbook playbook.yml --inventory inventory --diff

lint:
	pre-commit run --all-files
