ANSIBLE_CMD = poetry run ansible-playbook

env ?= null
play_env = $(if $(filter $(env),staging prod),$(env),null)
args ?=

.PHONY: precommit play help

precommit:
	pre-commit run --all-files

play:
	@if [ "$(play_env)" = "null" ]; then \
		$(ANSIBLE_CMD) playbook.yml $(args); \
	else \
		$(ANSIBLE_CMD) playbook.yml -l $(play_env) $(args); \
	fi

help:
	@echo "Available targets:"
	@echo "  precommit      Manually run pre-commit hooks on all files."
	@echo "  play           Run Ansible playbook for optionally selected environments."
	@echo "                   Usage: make play [env={staging|prod}(default: all)]"
	@echo ""
	@echo "Optional argument:"
	@echo "  env            Specifies the environment to target. Acceptable values are staging or prod."
