diff:
	sudo ansible-playbook playbook.yml --check

apply:
	sudo ansible-playbook playbook.yml

lint:
	pre-commit run --all-files
