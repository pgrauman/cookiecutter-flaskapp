BAKE_OPTIONS=--no-input

VENV_DIR = .venv
WITH_VENV = . $(VENV_DIR)/bin/activate

help:
	@echo "bake 	generate project using defaults"
	@echo "watch 	generate project using defaults and watch for changes"
	@echo "replay 	replay last cookiecutter run and watch for changes"
	@echo "env		build environment with cookiecutter in it"

bake: env
	cookiecutter $(BAKE_OPTIONS) . --overwrite-if-exists

watch: bake
	watchmedo shell-command -p '*.*' -c 'make bake -e BAKE_OPTIONS=$(BAKE_OPTIONS)' -W -R -D \{{cookiecutter.project_slug}}/

replay: BAKE_OPTIONS=--replay
replay: watch
	;

env: requirements-dev.txt
	test -d $(VENV_DIR) || virtualenv -p python3 $(VENV_DIR)
	$(VENV_DIR)/bin/pip3 install -r requirements-dev.txt
	touch $(VENV_DIR)/bin/