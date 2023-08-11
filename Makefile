SCRIPTS=arxiv_dmenu pdf_streamer ytdl.sh
install:
	cp $(SCRIPTS) ~/.local/bin/

uninstall:
	rm -v ~/.local/bin/arxiv_dmenu
	rm -v ~/.local/bin/pdf_streamer
