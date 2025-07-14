 Cheat Sheet 4: Networking, System Monitoring & Project Exporting
📡 Networking Commands
Windows CMD
ipconfig: Display IP configuration.

ipconfig /all: Show detailed network configuration.

ping [host]: Test connectivity to a host.

tracert [host]: Trace route to a host.

netstat -an: Display active connections and listening ports.

nslookup [domain]: Query DNS information.

PowerShell
Get-NetIPAddress: Retrieve IP address configuration.

Test-Connection [host]: Ping a host.

Test-NetConnection [host]: Test network connectivity.

Resolve-DnsName [domain]: Resolve DNS names.

Get-NetTCPConnection: Display TCP connections.

Unix/Linux
ifconfig or ip addr: Display network interfaces and IP addresses.

ping [host]: Test connectivity to a host.

traceroute [host]: Trace route to a host.

netstat -tuln: Show listening ports.

dig [domain]: Query DNS information.

nslookup [domain]: Query DNS information.

🖥️ System Monitoring
Windows CMD
tasklist: List running processes.

taskkill /PID [pid]: Terminate a process by PID.

systeminfo: Display system information.

chkdsk: Check disk for errors.

PowerShell
Get-Process: List running processes.

Stop-Process -Id [pid]: Terminate a process by PID.

Get-ComputerInfo: Retrieve system information.

Get-EventLog -LogName System: View system event logs.

Unix/Linux
top: Display real-time process information.

htop: Interactive process viewer (if installed).

ps aux: List all running processes.

kill [pid]: Terminate a process by PID.

df -h: Show disk usage.

free -h: Display memory usage.

uptime: Show system uptime.

📦 Project Exporting
Windows CMD
xcopy [source] [destination] /E /H /C /I: Copy directories with subdirectories.

robocopy [source] [destination] /E: Robust file copy.

PowerShell
Compress-Archive -Path [source] -DestinationPath [archive.zip]: Create a ZIP archive.

Expand-Archive -Path [archive.zip] -DestinationPath [destination]: Extract a ZIP archive.

Copy-Item -Path [source] -Destination [destination] -Recurse: Copy items recursively.

Unix/Linux
tar -czvf [archive.tar.gz] [directory]: Create a compressed archive.

tar -xzvf [archive.tar.gz]: Extract a compressed archive.

scp [file] [user]@[host]:[destination]: Securely copy files to a remote host.

rsync -avz [source] [user]@[host]:[destination]: Synchronize files to a remote host.

🧠 Quick Reference Table
Task	CMD	PowerShell	Unix/Linux
Display IP Configuration	ipconfig	Get-NetIPAddress	ifconfig / ip addr
Test Network Connectivity	ping [host]	Test-Connection [host]	ping [host]
Trace Route	tracert [host]	Test-NetConnection -TraceRoute [host]	traceroute [host]
List Running Processes	tasklist	Get-Process	ps aux
Terminate Process by PID	taskkill /PID [pid]	Stop-Process -Id [pid]	kill [pid]
Display System Information	systeminfo	Get-ComputerInfo	uname -a / uptime
Create Compressed Archive	N/A	Compress-Archive -Path [source] ...	tar -czvf [archive.tar.gz] [dir]
Extract Compressed Archive	N/A	Expand-Archive -Path [archive.zip] ...	tar -xzvf [archive.tar.gz]
Secure File Transfer	N/A	N/A	scp [file] [user]@[host]:[dest]

