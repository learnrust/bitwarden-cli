target/debug/bitwarden: src/*.rs
	cargo build
release: src/*.rs
	cargo build --release
	touch release.txt
test: src/*.rs
	cargo test
	touch test.txt

rpm: src/*.rs
	cargo build
	cargo rpm build
	ls ./target/release/rpmbuild/RPMS/*/*.rpm

deb: src/*.rs 
	cargo deb

all: rpm deb
	@echo making rpm and deb pkgs.

clean: 
	cargo clean
	rm -f test.txt release.txt
	rm -f /target/debian/*.deb ./target/release/rpmbuild/RPMS/x86_64/*.rpm

tree: clean
	tree -L 4 > ${PROJECT_NAME}-dir-layout.txt
# To work with git 
PROJECT_NAME    = bitwarden-cli
SHELL := /bin/bash
#https://stackoverflow.com/questions/6273608/how-to-pass-argument-to-makefile-from-command-line
args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`
%:
	@:

status:
	git status
push:
	git commit -am "$(call args, Automated lazy commit message without details, read the code change)"  && git push

diff:
	git diff 
