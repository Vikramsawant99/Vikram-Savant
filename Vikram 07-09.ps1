
# PsRemoting

hostname

# Rename-Computer 
# shutdown /r


Enable-PSRemoting -Verbose      # 5985 Port enableing 



Enter-PSSession -ComputerName Win-Vijay  # Connec to Next Server


New-NetFirewallRule -DisplayName "Windows Remote Management (HTTPS-In)" -Name "Windows Remote Management (HTTPS-In)" -Profile Any -LocalPort 5986 -Protocol TCP

$Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName "Vikram"

Export-Certificate  -Cert $Cert -FilePath "C:\Temp"

New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * -CertificateThumbPrint $Cert.Thumbprint –Force

Set-Item wsman:\localhost\Client\TrustedHosts -Value 192.168.1.49 -Concatenate -Force

Set-NetConnectionProfile -NetworkCategory Private


Set-Location -Path wsman:
Get-ChildItem

Set-Location -Path localhost
Get-ChildItem

Set-Location -Path Listener
Get-ChildItem

Get-ChildItem -Path Listener_1084132640

ipconfig

Enter-PSSession -ComputerName Win-Vijay -Port 5986 -UseSSL -SessionOption   ## Connection required 

get-help Enter-PSSession -ShowWindow

get-help New-PSSessionOption

$Session = New-PSSessionOption -SkipCACheck -SkipCNCheck
$Crd =Get-Credential

Enter-PSSession -ComputerName Win-Vijay -Port 5986 -UseSSL -SessionOption $Session -Credential $Crd


## New-Session

$RemoteVijay = New-PSSession -ComputerName Win-Vijay -Port 5986 -UseSSL -SessionOption $Session -Credential $Crd

$RemoteVijay | Enter-PSSession         # Type 1 Connection
Get-PSSession                          # Type 2 Connection
Enter-PSSession -Session $RemoteVijay  # Type 3 Connection


## Enter Credential in Script


$UserName ="Administrator"
$Password = "ntms@1234" | ConvertTo-SecureString -AsPlainText -Force

$Cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $UserName,$Password


## Task

## Import File

$UserList = Import-Csv -Path C:\test\Userlist.csv
$ServiceList = Import-Csv -Path C:\test\ServiceList.csv

## CheckSerivce Statsus

$ServiceStatus = Get-Service | ?{$_.Name -eq $ServiceList}

foreach($Service in $ServiceList)
{

if($ServiceStatus -eq "Running")
 {
 
  Write-Host "Not Compliance" 
 }


}



 


