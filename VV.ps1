    get-service
    Get-EventLog
    Stop-Service -Name BITS
    Get-Command -Noun Service
    Get-Command -Verb Get
    Get-Command -Module azure
get-help Get-Service -examples

Get-Help Get-Service -ShowWindow
Get-Command -Noun *VM* -Module Azure*
Get-Command -Noun *log* | Out-File -FilePath 
Get-Help Get-Service -Examples
Get-Service -Name Win*
Get-EventLog -LogName System -Source "Application Popup" | Out-File -FilePath 'D:\New folder\PS.txt'
Get-EventLog -LogName System -Source "bowser"
Get-EventLog -LogName Application -Source 'Perflib'
Get-EventLog -LogName Application -Source "Perflib" | Export-Csv 'D:\New folder\pz.csv'
Get-Command -Noun file*
Get-PSProvider
Get-Command -Noun *item* 
Get-Command -Noun *childitem*
Get-Help Get-ChildItem
Get-ChildItem HKLM:\SOFTWARE
Get-Item HKLM:\SOFTWARE
Get-ItemProperty HKLM:\SOFTWARE
Get-Item 'D:\New folder'
Get-ChildItem 'D:\New folder'
Get-ItemProperty 'D:\New folder'
Get-item Env:\APPDATA
Get-ItemProperty 'Env:\APPDATA'
Get-Command -Noun item
Get-Help New-Item -Examples
New-Item -ItemType directory -Name IAC -Path C:\
New-Item -ItemType file -Name IAC -Path C:\IAC
Get-Command -Noun content
Set-Content -Value "BB" -Path C:\IAC\IAC
Set-content -Value "VV" -Path C:\IAC\IAC
Add-content -Value "BV" -Path C:\IAC\IAC
Get-Command -Noun content
Get-Help Set-Content
Get-Help Set-ItemProperty -Examples
Set-ItemProperty -Path C:\IAC\IAC -Name  LastWriteTime -Value "08/02/2019 1:33 PM"
Get-ItemProperty -Path C:\IAC\IAC |fl *  
Get-Service | Get-Member
"Vikram" | Get-Member
"This is my first day".Split(" ")
"Danesh".IndexOf("e")
"Danesh".Substring(3,2)
"This is my first day".Substring('my')
Get-Service | Get-Member
Get-Member -InputObject (Get-Service)
$vv= @("vijay","vikram")
Write-Host "$vv"
$vv | Get-Member
Get-Member -InputObject $vv
$vv[1]="Jayesh"
$VV[1]
