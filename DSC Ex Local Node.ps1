Configuration PwDSC
{
    Import-Module -Name PSDesiredStateConfiguration
    
    Node Localhost
    {
                 
        File NewFile 
        {
          DestinationPath = "C:\NewFolder\NewFile.txt"
          Type = "File"
          Contents = "H A C K"
          DependsOn = "[file]NewFolder"
        
        }
       
          File NewFolder
        {
          DestinationPath = "C:\NewFile.txt"
          Type = "Directory"
                 
        } 
    
    }
}

PwDSC

Start-DscConfiguration -Path C:\Users\Administrator\PWDsc -Wait -Verbose
