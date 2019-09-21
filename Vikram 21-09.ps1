## DSC

Get-Module -ListAvailable

$env:PSModulePath

Get-DscResource

Find-Module PackageManagement

#CIM

get-ciminstance
Get-Help Get-CimInstance -ShowWindow


Get-CimInstance -namespace root/microsoft/windows -ClassName __NAMESPACE

get-cimclass -Namespace root/microsoft/windows/DesiredStateConfiguration -ClassName MSFT_* | fw  #Fw format 

get-cimclass -Namespace root/microsoft/windows/DesiredStateConfiguration -ClassName MSFT_DSCmetaconfiguration | select -ExpandProperty CimClassProperties

Get-DscLocalConfigurationManager

Get-DscResource -Name service -Syntax # Check Syntax of Service 

Get-DscResource -Name File -Syntax 

Get-DscResource -Name *fe* 

Get-DscResource -Name WindowsFeature -Syntax



## Ex ##


Configuration MyFiles
{
    Import-Module -Name PSDesiredStateConfiguration
    
    Node localhost
    {
        File Vikram
        {
          DestinationPath = "C:\Demo\Vikram.txt"
          Type = "File"
          Contents = "Hi MY Dsc File"
        
        }
        
    
    }
}

MyFiles

Start-DscConfiguration -Path C:\Users\Administrator\MyFiles -Wait -Verbose


######################################################################


Configuration GroupCreation 
{
    param (
    [Parameter(Mandatory)]
    [String]
    $GroupName,
    [Parameter(Mandatory)]
    [String]
    $Description,
    [Parameter()]
    [String[]] $Nodes = 'localhost'
    )
    
    Import-DscResource -ModuleName PSDesiredStateConfiguration
        
        Node $Nodes
        {
         Group DemoGroup
            {
                GroupName = $GroupName
                Description = $Description
                Ensure = 'Present'
            }
    }
}

GroupCreation -OutputPath C:\GroupCreation `
-GroupName 'DemoGroup' `
-Description 'Demo Group' `
-Nodes 'Win-Vijay'

