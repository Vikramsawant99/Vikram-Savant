#Get all files in your Windows directory that have a two-digit number as part of the name. 
$2DFilename = Get-ChildItem -Path C:\Windows
$2DFilename = Get-Member
$2DFilename -match "\d\d"

Get-ChildItem -Path C:\Windows | Where-Object {$_.Name -match "\d{2}"}


# In the Windows Update log, usually found in C:\Windows, you want to display only the lines where the agent began installing files.
Get-ChildItem -Path C:\Windows
Get-ChildItem -Path C:\Windows\Logs
Get-ChildItem -Path C:\Windows\Logs\WindowsUpdate
Get-WindowsUpdateLog
$logfile = Get-Content -Path C:\Users\Vikram\Desktop\WindowsUpdate.log 
$logfile -match "Agent"
$logfile -match "Agent           Added update"

# Write a regex to validate the IPv4 address.

"10.10.0.200" -match "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"

$IPv4 -match  "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"
Write-Host " Enter Your IP adress"$IPv4
Read-Host "IP Adress is"

IF($IPv4 -match  "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}")
{Write-host $IPv4 "This IP Valid"}
else
{Write-host $IPv4 "This IP not Valid"}

# Write  aregex to vaildate the Email Address.
"Vikramsawant99@gmail.com" -match "\w[@]\w\w"
"vikram.savant@gep.com"-match "\w[@]\w\w"
"vikram.Savant@tcs.in" -match "\w[@]\w\D"
"vikram.in" -match "\w[@]\w\w"
"Vikram.Savant@wipro.2" -match "\w[@]\w\D$"
"Vikram.Savant@wipro.2" -match "\w[@]\w\w"
"Vikram.Savant@wipro.in" -match "\w[@]\w\D$"

"Vikram.savant@wipro.com"  -match "\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b" # Final

# Write a regex to validate the SID for ad users. 

$sid = "S-1-5-21-1220945662-120265-83955-55"

$sid -match "^S-1-[0-5]-\d{2}-\d{10}-\d{10}-\d{9}-[1-9]\d{3}"
