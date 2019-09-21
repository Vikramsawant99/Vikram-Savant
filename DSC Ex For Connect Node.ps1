Configuration PwDSC
{
    Import-Module -Name PSDesiredStateConfiguration
    
    Node Win-Vijay
    {
                 
        File NewFile 
        {
          DestinationPath = "C:\2F\NewFile.txt"
          Type = "File"
          Contents = "H A C K"
          DependsOn = "[file]NewFolder"
        
        }
       
          File NewFolder
        {
          DestinationPath = "C:\2F"
          Type = "Directory"
                 
        } 
    
    }
}

PwDSC


# Connect Node


$CIMSessionoption = New-CimSessionOption -SkipCACheck -SkipCNCheck -UseSsl


$UserName ="Administrator"
$Password = "ntms@1234" | ConvertTo-SecureString -AsPlainText -Force

$Cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $UserName,$Password

$CIMSession = New-CimSession -ComputerName Win-Vijay -Credential $Cred -SessionOption $CIMSessionoption -Port 5986



Start-DscConfiguration -Path C:\Users\Administrator\PWDsc -CimSession $CIMSession -Wait -Verbose
