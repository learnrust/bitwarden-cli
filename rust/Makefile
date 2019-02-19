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
commit:
	git commit -a -m"automated commit all changes with lazy message";git push
status:
	git status
diff:
	git diff 
clean: 
	cargo clean
	rm -f test.txt release.txt
	rm -f /target/debian/*.deb ./target/release/rpmbuild/RPMS/x86_64/*.rpm

