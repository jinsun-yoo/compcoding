.PHONY: build

mkfile_path := $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
mkfile_dir:=$(shell cd $(shell dirname $(mkfile_path)); pwd)
bin_dir:=$(mkfile_dir)/bin

build:
	echo $(mkfile_dir)
	go build -o $(bin_dir)/$(id) $(id).go

run: build
	$(bin_dir)/$(id)

clean:
	rm -rf $(bin_dir)