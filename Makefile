diff:
	sudo ansible-playbook playbook.yml --diff --check

apply:
	sudo ansible-playbook playbook.yml --diff

lint:
	pre-commit run --all-files
