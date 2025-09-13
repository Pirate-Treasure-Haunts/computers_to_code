# prerequisites (one-time):
# 1) Rust: https://rustup.rs
# 2) Tauri CLI: cargo install tauri-cli
# 3) Visual C++ Build Tools (for bundling), and WebView2 runtime (usually present)

cd C:\GitHub\pip-clip-osd
cargo tauri build
# or for dev:
cargo tauri dev

Linux (WSL/Ubuntu or native):

# prerequisites (one-time):
#  - Rust: https://rustup.rs
#  - cargo install tauri-cli
#  - apt install libgtk-3-dev libayatana-appindicator3-dev libsoup2.4-dev webkit2gtk-4.1

cd ~/code/pip-clip-osd
cargo tauri build
# or:
cargo tauri dev


macOS (Terminal):

# prerequisites:
#  - Rust: https://rustup.rs
#  - cargo install tauri-cli
#  - Xcode command line tools

cd ~/code/pip-clip-osd
cargo tauri build
# or:
cargo tauri dev


Hotkey:

Windows/Linux: Ctrl+Shift+V

macOS: Cmd+Shift+V