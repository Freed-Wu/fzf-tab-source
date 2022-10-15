.PHONY: default
default: all

.PHONY: all
all: README.md

README.md: fzf-tab-source.plugin.zsh README.md.in
	cp $@.in $@
	perl -pe's=^#\s.*\n==g;s=^## *==g' $< >> $@

clean:
	rm -rf README.md
