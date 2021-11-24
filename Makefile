SCRIPTS=arxiv_dmenu
install:
	cp $(SCRIPTS) ~/.local/bin/

uninstall:
	rm -v ~/.local/bin/$(SCRIPTS)
