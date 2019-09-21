$MyData =
@{
    AllNodes =
    @(
        @{
            NodeName           = “*”
            LogPath            = “C:\Logs”
        },
        @{
            NodeName = "localhost"
            SiteContents = “C:\Site1”
            SiteName = “Website1”
        },
        @{
            NodeName = "Win-Vijay"
            SiteContents = “C:\Site2”
            SiteName = “Website2”
        }
    );
    NonNodeData =
    @{
       ConfigFileContents = [String](Get-Content C:\Template\Config.xml)
     }
}
configuration WebsiteConfig
{
    Import-DscResource -ModuleName xWebAdministration -Name MSFT_xWebsite
    node $AllNodes.NodeName
    {
        xWebsite Site
        {
            Name         = $Node.SiteName
            PhysicalPath = $Node.SiteContents
            Ensure       = “Present”
        }
        File ConfigFile
        {
            DestinationPath = $Node.SiteContents + “C:\config.xml”
            Contents = $ConfigurationData.NonNodeData.ConfigFileContents
        }
    }
}


WebsiteConfig -ConfigurationData $MyData


# Install-Module xWebAdministration

# Import-Module xWebAdministration

Start-DscConfiguration -Path C:\Users\Administrator\WebsiteConfig -Wait -Verbose
 