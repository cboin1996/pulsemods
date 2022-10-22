installzsh:
	cp ~/.zshrc ~/.zshrc.bak.pulsemods
	echo "alias psetup=$(shell pwd)/setup_pulse.sh $(default_sink)" >> ~/.zshrc
	echo "alias prevert=$(shell pwd)/unload_pulse.sh" >> ~/.zshrc

clean:
	mv ~/.zshrc.bak.pulsemods ~/.zshrc

