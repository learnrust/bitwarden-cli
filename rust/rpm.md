[pi@centos7 rust]$ cargo rpm init
     Created /home/pi/github/bitwarden-cli/rust/.rpm
    Rendered /home/pi/github/bitwarden-cli/rust/.rpm/bitwarden.spec
    Updating /home/pi/github/bitwarden-cli/rust/Cargo.toml
    Finished bitwarden configured (type "cargo rpm build" to build)
[pi@centos7 rust]$


[pi@centos7 rust]$ cargo rpm build
   Compiling bitwarden v0.1.0 (/home/pi/github/bitwarden-cli/rust)
warning: unused import: `reqwest::header`
  --> src/lib.rs:19:5
   |
19 | use reqwest::header;
   |     ^^^^^^^^^^^^^^^
   |
   = note: #[warn(unused_imports)] on by default

warning: value assigned to `mac` is never read
  --> src/lib.rs:83:13
   |
83 |     let mut mac = vec![0; 0];
   |             ^^^
   |
   = note: #[warn(unused_assignments)] on by default

warning: field is never used: `encryption_type`
  --> src/lib.rs:69:5
   |
69 |     encryption_type: u8,
   |     ^^^^^^^^^^^^^^^^^^^
   |
   = note: #[warn(dead_code)] on by default

warning: field is never used: `iv`
  --> src/lib.rs:70:5
   |
70 |     iv: Vec<u8>,
   |     ^^^^^^^^^^^

warning: field is never used: `ct`
  --> src/lib.rs:71:5
   |
71 |     ct: Vec<u8>,
   |     ^^^^^^^^^^^

warning: field is never used: `mac`
  --> src/lib.rs:72:5
   |
72 |     mac: Vec<u8>,
   |     ^^^^^^^^^^^^

warning: unused variable: `result`
  --> src/main.rs:68:17
   |
68 |             let result = "";
   |                 ^^^^^^ help: consider using `_result` instead
   |
   = note: #[warn(unused_variables)] on by default

warning: unused variable: `sync_matches`
  --> src/main.rs:81:23
   |
81 |         ("sync", Some(sync_matches)) => {
   |                       ^^^^^^^^^^^^ help: consider using `_sync_matches` instead

    Finished release [optimized] target(s) in 5.05s
    Building bitwarden-0.1.0.rpm (using rpmbuild 4.11.3)
    Finished bitwarden-0.1.0.rpm: built in 5 secs
[pi@centos7 rust]$ 
