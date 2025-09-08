# Terminal Fundamentals & Navigation Cheat Sheet


## Opening Terminals
Windows 11 Command Prompt
Win + R, type cmd, press Enter: Open Command Prompt.

Win + X, then press C: Open Command Prompt from the Power User menu.

Shift + Right-Click in a folder, select "Open in Terminal": Open Command Prompt at a specific folder .

PowerShell 7
Win + X, then press I: Open PowerShell from the Power User menu.

Win + R, type powershell, press Enter: Open PowerShell.

Shift + Right-Click in a folder, select "Open in Terminal": Open PowerShell at a specific folder.

Unix/Linux Terminal
Ctrl + Alt + T: Open the default terminal emulator.

Alt + F2, type gnome-terminal or konsole, press Enter: Open terminal via run command.


## Directory Navigation
Windows (CMD & PowerShell)
cd [path]: Change directory.

cd ..: Move up one directory level.

dir: List contents of the current directory.

cls: Clear the terminal screen.

Unix/Linux
cd [path]: Change directory.

cd ..: Move up one directory level.

ls: List contents of the current directory.

ls -la: List all contents with detailed information.

clear: Clear the terminal screen.


## File and Directory Operations
Windows CMD
mkdir [folder]: Create a new directory.

copy [source] [destination]: Copy files.

move [source] [destination]: Move or rename files.

del [file]: Delete a file.

rmdir [folder]: Remove a directory.

PowerShell
New-Item -ItemType Directory -Path [folder]: Create a new directory.

Copy-Item [source] -Destination [destination]: Copy files or directories.

Move-Item [source] -Destination [destination]: Move or rename files or directories.

Remove-Item [path]: Delete files or directories.

Unix/Linux
mkdir [folder]: Create a new directory.

cp [source] [destination]: Copy files or directories.

mv [source] [destination]: Move or rename files or directories.

rm [file]: Delete a file.

rm -r [folder]: Remove a directory and its contents.


## Essential Keyboard Shortcuts
Windows CMD
Ctrl + C: Copy selected text or cancel current command.

Ctrl + V: Paste text.

Ctrl + M: Enter Mark mode to select text.

Arrow Keys: Navigate through command history.

Ctrl + Home/End: Move cursor to beginning/end of buffer in Mark mode .

PowerShell
Ctrl + C: Cancel current command.

Ctrl + V: Paste text.

Up/Down Arrows: Navigate through command history.

Tab: Auto-complete commands or file names.

Ctrl + R: Reverse search through command history .

Unix/Linux
Ctrl + C: Cancel current command.

Ctrl + D: Log out of the current session or close the terminal.

Ctrl + L: Clear the terminal screen.

Ctrl + U: Delete from cursor to the beginning of the line.

Ctrl + K: Delete from cursor to the end of the line.

Ctrl + R: Reverse search through command history .


## Command History and Search
Windows CMD
F7: Display command history.

F8: Cycle through command history matching current input.

PowerShell
Get-History: Display command history.

Ctrl + R: Reverse search through command history.

Unix/Linux
history: Display command history.

Ctrl + R: Reverse search through command history.


### Tips for Efficient Workflow
Tab Completion: Use the Tab key to auto-complete commands and file names.

Drag and Drop: In Windows terminals, drag a file or folder into the terminal to insert its path.

QuickEdit Mode: In CMD, enable QuickEdit Mode for easier text selection and copying.
