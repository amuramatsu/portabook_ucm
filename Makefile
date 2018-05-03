#! /usr/bin/make -f

ALSA_UCM_DIR = /usr/share/alsa/ucm

KERNEL_MAJOR_VER = $(shell uname -r | cut -d. -f 1)
KERNEL_MINOR_VER = $(shell uname -r | cut -d. -f 2)

ifeq ($(shell expr $(KERNEL_MAJOR_VER) \> 4 \| $(KERNEL_MINOR_VER) \>= 15),1)
TARGET = cht-bsw-rt5672
DESTNAME = $(TARGET)
else ifeq ($(shell expr $(KERNEL_MAJOR_VER) = 4 \& $(KERNEL_MINOR_VER) \>= 5),1)
TARGET = cherrytrailcraudio
DESTNAME = $(TARGET)
else
TARGET = cherrytrailcraudio44
DESTNAME = cherrytrailcraudio
endif

install:
	rm -rf $(ALSA_UCM_DIR)/$(DESTNAME)
	cp -rf $(TARGET) $(ALSA_UCM_DIR)/$(DESTNAME)

uninstall:
	rm -rf $(TARGET)/$(ALSA_UCM_DIR)
