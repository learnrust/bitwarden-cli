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


# docs
#A2PS2S1C  = /bin/a2ps --sides=2 --medium=Letter --columns=1 --portrait --line-numbers=1 --font-size=8 --font-size=8 $@ --output=./$@.ps
A2PS2S1C  = ./a2ps2s1c.bash 
#a2ps --sides=2 --medium=Letter --columns=1 --portrait --line-numbers=1 --font-size=8 $@ --output=./$@.ps
A2PSTMP   = ./tmp
DOCS      = ./docs
ps:
	rm -f /tmp/*.ps /tmp/*.pdf
	${A2PS2S1C} Cargo.toml
	${A2PS2S1C}  Makefile
	(cd ./src/bin ;../../${A2PS2S1C} agent.rs)
	(cd ./src ;../${A2PS2S1C} cli.yaml )
	(cd ./src ;../${A2PS2S1C} crypto.rs )
	(cd ./src ;../${A2PS2S1C} lib.rs )
	(cd ./src ;../${A2PS2S1C} main.rs )

pdf:
	cd  /tmp;ps2pdf Cargo.toml.ps  Cargo.toml.pdf
	cd  /tmp;ps2pdf Makefile.ps    Makefile.pdf
	cd  /tmp;ps2pdf agent.rs.ps    agent.rs.pdf
	cd  /tmp;ps2pdf cli.yaml.ps    cli.yaml.pdf
	cd  /tmp;ps2pdf crypto.rs.ps   crypto.rs.pdf
	cd  /tmp;ps2pdf lib.rs.ps      lib.rs.pdf
	cd  /tmp;ps2pdf main.rs.ps     main.rs.pdf
	cp /tmp/*.pdf ../docs
