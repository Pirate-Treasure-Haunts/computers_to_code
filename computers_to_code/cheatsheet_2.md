Cheat Sheet 2: File Management \& Project Structuring

File Compression \& Archiving

Windows CMD

(No native; use 7z.exe or xcopy for copy).

Expand: expand \[cab] \[dest].

PowerShell

Compress-Archive -Path \[source] -DestinationPath \[zip].

Expand-Archive -Path \[zip] -DestinationPath \[dest].

Linux (Debian/Ubuntu/Arch)/macOS

tar -czvf \[archive.tar.gz] \[folder].

tar -xzvf \[archive.tar.gz].

zip -r \[archive.zip] \[folder].

unzip \[archive.zip].

Permissions \& Ownership

Windows CMD

icacls \[file] /grant \[user]:F.

icacls \[file] /setowner \[user].

PowerShell

Get-Acl \[file].

$acl = Get-Acl \[file]; $acl.SetAccessRule(New-Object System.Security.AccessControl.FileSystemAccessRule("\[user]","FullControl","Allow")); Set-Acl \[file] $acl.

Set-Acl -Path \[file] -AclObject $acl (for owner).

Linux (Debian/Ubuntu/Arch)/macOS

chmod 755 \[file].

chown \[user]:\[group] \[file].

Searching \& Filtering

Windows CMD

findstr "term" \[file].

dir /s /b | findstr "term".

PowerShell

Select-String -Path \[file] -Pattern "term".

Get-ChildItem -Recurse | Select-String "term".

Linux (Debian/Ubuntu/Arch)/macOS

grep "term" \[file].

find . -type f -exec grep "term" {} ;.

find \[path] -name "pattern".

Project Structuring Tips



src/: Code files.

docs/: Documentation.

assets/: Images/media.

tests/: Unit tests.

Use .gitignore for version control.

README.md for overview.

