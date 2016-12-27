#! /usr/bin/make -f

TARGET = cherrytrailcraudio
ALSA_UCM_DIR = /usr/share/alsa/ucm

install:
	cp -rf $(TARGET) $(ALSA_UCM_DIR)

uninstall:
	rm -rf $(TARGET)/$(ALSA_UCM_DIR)
