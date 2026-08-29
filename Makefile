.PHONY: all install

all: install

install:
	if [ -f $(HOME)/.tmux.conf ] && [ ! -L $(HOME)/.tmux.conf ]; then \
		mv $(HOME)/.tmux.conf $(HOME)/.tmux.conf_BAK; \
	fi
	ln -sf $(CURDIR)/dot_tmux.conf $(HOME)/.tmux.conf
