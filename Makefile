all: build

# Local variable overrides and additional make targets, if available
-include Makefile.local

.PHONY: all clean build serve

JEKYLL = bundle exec jekyll

CONFIG_YML ?= _spd_gr_config.yml

# Common flags for all jekyll commends
JEKYLL_FLAGS += --config $(CONFIG_YML)

# Note: The make targets below will run jekyll using the default destination
#
# Modifying them to use a different `--destination` (e.g. an external build
# directory) is very dangerous!
#
# When Jekyll is run it will will first clean the <destination> directory.
# This is done by removing everything in the directory except the files
# specified as `keep_files` in the jekyll configuration. For example, if your
# <destination> is a git repository, jekyll will remove `.git/ and this will
# result in losing all your git history.
#
# In summary, do not do that unless you know exactly what you are doing.
clean:
	$(JEKYLL) clean $(JEKYLL_FLAGS)

build:
	$(JEKYLL) build $(JEKYLL_FLAGS)

serve:
	$(JEKYLL) serve $(JEKYLL_FLAGS)
