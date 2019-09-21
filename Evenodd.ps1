 Param(
 [int]$Number
 )

 If($Number%2 -eq 0)
 {
 
 Write-Host "$Number is Even"
  
 }
 else
 {
 Write-Host "$Number is Odd"
 }