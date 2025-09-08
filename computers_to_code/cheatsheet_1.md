Cheat Sheet 1: Terminal Fundamentals \& Navigation

Opening Terminals

Windows 10/11 (32/64-bit) CMD

Win + R, type cmd, Enter.

Win + X, C.

Shift + Right-Click folder, "Open in Terminal".

PowerShell

Win + X, I.

Win + R, type powershell, Enter.

Shift + Right-Click folder, "Open in Terminal".

Linux (Debian/Ubuntu/Arch)

Ctrl + Alt + T.

Alt + F2, gnome-terminal or konsole.

macOS

Cmd + Space, Terminal, Enter.

Applications > Utilities > Terminal.

Directory Navigation

Windows CMD/PowerShell

cd \[path]

cd ..

dir (CMD) / Get-ChildItem (PS)

cls (CMD) / Clear-Host (PS)

Linux/macOS

cd \[path]

cd ..

ls / ls -la

clear

File and Directory Operations

Windows CMD

mkdir \[folder]

copy \[source] \[dest]

move \[source] \[dest]

del \[file]

rmdir \[folder]

PowerShell

New-Item -ItemType Directory \[folder]

Copy-Item \[source] -Destination \[dest]

Move-Item \[source] -Destination \[dest]

Remove-Item \[path]

Linux/macOS

mkdir \[folder]

cp \[source] \[dest]

mv \[source] \[dest]

rm \[file]

rm -r \[folder]

Essential Keyboard Shortcuts

Windows CMD

Ctrl+C: Cancel/copy.

Ctrl+V: Paste.

Arrow keys: History.

PowerShell

Ctrl+C: Cancel.

Ctrl+V: Paste.

Up/Down: History.

Tab: Complete.

Linux/macOS

Ctrl+C: Cancel.

Ctrl+D: Exit.

Ctrl+L: Clear.

Ctrl+R: Search history.

Command History and Search

Windows CMD

F7: List.

F8: Cycle.

PowerShell

Get-History.

Ctrl+R: Search.

Linux/macOS

history.

Ctrl+R: Search.

