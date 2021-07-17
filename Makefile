.PHONY: %

# GENERIC TARGET
_APP=$(word 1, $(MAKECMDGOALS))
_MAKETARGET=$(filter-out $(_APP), $(MAKECMDGOALS))

# GENERIC EXECUTE
define execute
	cd $1 && make $2
endef

%:
	$(call execute,$(_APP),$(_MAKETARGET))