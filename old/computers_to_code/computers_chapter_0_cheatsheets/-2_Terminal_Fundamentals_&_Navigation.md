Cheat Sheet 3: Scripting & Automation
📝 Script File Basics
Environment	Script File Extension	Execution Command
CMD	.bat or .cmd	script.bat
PowerShell	.ps1	.\script.ps1
Unix/Linux	.sh	./script.sh

Note: Ensure execution permissions are set appropriately. For Unix/Linux, use chmod +x script.sh.

🔧 Variables
CMD
cmd
Copy
Edit
set VAR=Value
echo %VAR%
PowerShell
powershell
Copy
Edit
$var = "Value"
Write-Output $var
Unix/Linux
bash
Copy
Edit
VAR="Value"
echo $VAR
🔁 Loops
CMD
cmd
Copy
Edit
for /L %%i in (1,1,5) do (
    echo %%i
)
PowerShell
powershell
Copy
Edit
for ($i = 1; $i -le 5; $i++) {
    Write-Output $i
}
Unix/Linux
bash
Copy
Edit
for i in {1..5}
do
    echo $i
done
🔄 While Loops
CMD
cmd
Copy
Edit
set /a i=0
:loop
if %i%==5 goto end
echo %i%
set /a i+=1
goto loop
:end
PowerShell
powershell
Copy
Edit
$i = 0
while ($i -lt 5) {
    Write-Output $i
    $i++
}
Unix/Linux
bash
Copy
Edit
i=0
while [ $i -lt 5 ]
do
    echo $i
    i=$((i+1))
done
🔂 Until Loops (Unix/Linux Only)
bash
Copy
Edit
i=0
until [ $i -ge 5 ]
do
    echo $i
    i=$((i+1))
done
🔀 Conditional Statements
CMD
cmd
Copy
Edit
if "%VAR%"=="Value" (
    echo Match
) else (
    echo No Match
)
PowerShell
powershell
Copy
Edit
if ($var -eq "Value") {
    Write-Output "Match"
} else {
    Write-Output "No Match"
}
Unix/Linux
bash
Copy
Edit
if [ "$VAR" = "Value" ]; then
    echo "Match"
else
    echo "No Match"
fi
🧩 Functions
CMD
cmd
Copy
Edit
:myFunction
echo This is a function
goto :eof

call :myFunction
PowerShell
powershell
Copy
Edit
function My-Function {
    Write-Output "This is a function"
}

My-Function
Unix/Linux
bash
Copy
Edit
my_function() {
    echo "This is a function"
}

my_function
🗂️ Arrays
PowerShell
powershell
Copy
Edit
$colors = @("Red", "Green", "Blue")
$colors[0]  # Outputs: Red
Unix/Linux
bash
Copy
Edit
colors=("Red" "Green" "Blue")
echo ${colors[0]}  # Outputs: Red
Note: CMD does not natively support arrays.

🛠️ Automation Examples
Batch Renaming Files
Unix/Linux

bash
Copy
Edit
for file in *.txt; do
    mv "$file" "${file%.txt}.md"
done
PowerShell

powershell
Copy
Edit
Get-ChildItem *.txt | Rename-Item -NewName { $_.Name -replace '.txt','.md' }
Scheduling Tasks
Windows (CMD)

cmd
Copy
Edit
schtasks /create /tn "MyTask" /tr "C:\Path\To\script.bat" /sc daily /st 09:00
Unix/Linux (crontab)

bash
Copy
Edit
crontab -e
# Add the following line:
0 9 * * * /path/to/script.sh
📌 Tips & Tricks
CMD: Use setlocal enabledelayedexpansion to update variables within loops.

PowerShell: Utilize Get-Help for command assistance.

Unix/Linux: Use man pages for detailed command information.

