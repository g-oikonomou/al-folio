.PHONY: clean

TARGET_DIR ?= _site
CLEAN_FILES = $(addprefix $(TARGET_DIR)/, assets pubs news index.html)

clean:
	rm -rf $(CLEAN_FILES)