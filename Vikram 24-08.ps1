# Hash Table

# 1. Arry inside hash Tabel 

$StudentDeails = @{ Name= "Vikram"
                    Sub = @("Math","Science")  
                   }
$StudentDeails

#2.Hashtable inside Arry

$Student = @(
              @{Name ="Vikram"},
              @{Name = "Vijay"},
              @{Name = "Vaibhav"} 
              
              )

$Student


$Student = @(@{Name ="Vikram"},@{Name ="Vijay"},@{Name ="Vaibhav"})       
            
$Student


$Student1 =@{Name="Dinesh"
               id="1"}

$Student1 | gm  # Property

$Student1.Keys
$Student1.Values
$Student1.ContainsKey("Sub")

$Student1.add = @{Name="Vikram";Id="2"}
$Student1



$Student1 =@{Name="Dinesh";id="1"}
$Student1
$Student1.add("Vikram","2")
$Student1

# To add Objest in arry(Arrylist)
[System.Collections.Arrylist]$Studentlist=@(1.2.3)
$Student1.id
$arrylist.add(4)

# PipeLine



Get-Help Get-Service -ShowWindow
Get-Service |gm
Get-Service | Get-Member

Get-Service | Stop-Process -WhatIf

Get-Help Stop-Process -ShowWindow


## foreach

$Adusers = Get-Content -Path C:\test\Adusers.csv
$Exusers = Get-Content -Path C:\test\Exusers.csv

foreach($Aduser in $Adusers)
{
  foreach ($Exuser in $Exusers)
   { 
     If($Aduser.mail -eq $Exuser.mail)
        {
          $Aduser.Name,$Exuser.Totalsize | Export-Csv -Path C:\Test\Same 
          }
          else
            {
              $Aduser.Name | Export-Csv -Path C:\test\notmatch
              }
        }
    }


$Adusers = Import-Csv -Path C:\test\Adusers.csv
$Exusers = Import-Csv -Path C:\test\Exusers.csv

foreach($Aduser in $Adusers)
{
 #   $Aduser
  $matched = $Exusers | Where-Object{$_.email -eq $Aduser.mail} | measure-object

 
if($matched.Count -eq 1)
   {
     $matchuser =$Exusers |Where-Object {$_.email -eq $Aduser.mail}
     #$Aduser.name,$matched.Totalsize 
     $outputuser =[PScustomobject]@{Name=$Aduser.Name
                                    TotalSize=$matchuser.Totalsize
                                   } 
      $outputuser | Export-Csv C:\test\Matched.csv -Append

    }
    else
    {
      $Aduser.Name | Export-Csv -Path C:\test\NotMatched.csv -Append
    }
  

}

Get-Process | Where-Object{$_.ws -ge 100KB} | Export-Csv -Path C:\Test\Process.csv

Get-Process | Where-Object{$_.ws -ge 100KB} | select name, @{l="WS(MB)";e={$_.ws/1MB}}