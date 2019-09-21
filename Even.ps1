
Param(
 [int]$Number
 )

 If( $Number %2 -eq 0)
 {
 # Write-Host "$Myoutput is Even"
 
 $Myoutput= "Even"
  
 }
 else
 {
 
 # Write-Host "$Myoutput is odd"

$Myoutput = "odd"

 }
 Write-Host "Myoutput from Script is $Myoutput"