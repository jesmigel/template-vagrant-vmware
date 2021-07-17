.PHONY: address clean config down lint login provision status up

_VM=time vagrant

address:
	$(call venv_exec,.venv,$(_VM) address)

clean:
	$(call venv_exec,.venv,$(_VM) destroy)
	rm -rf .vagrant

config:
	$(call venv_exec,.venv,$(_VM) validate)

down:
	$(call venv_exec,.venv,$(_VM) suspend)

lint:
	$(call venv_exec,.venv,ansible-lint .)

login:
	$(call venv_exec,.venv,$(_VM) ssh)

status:
	$(call venv_exec,.venv,$(_VM) status)
	
up:
	$(call venv_exec,.venv,$(_VM) up)

# VENV FUNCTIONS
define venv_exec
	$(if [ ! -f "$($(1)/bin/activate)" ], python3 -m venv $(1))
	( \
    	source $(1)/bin/activate; \
    	$(2) \
	)
endef
