#! /usr/bin/make -f

TARGET = cherrytrailcraudio
TARGET44 = cherrytrailcraudio44
ALSA_UCM_DIR = /usr/share/alsa/ucm

KERNEL_VER = $(uname -r | cut -b 1-3)

install:
	rm -rf $(ALSA_UCM_DIR)/$(TARGET)
	if [ $(KERNEL_VER) = 4.4 ]; then		\
	  cp -rf $(TARGET44) $(ALSA_UCM_DIR)/$(TARGET);	\
	else						\
	  cp -rf $(TARGET) $(ALSA_UCM_DIR);		\
	fi

uninstall:
	rm -rf $(TARGET)/$(ALSA_UCM_DIR)
