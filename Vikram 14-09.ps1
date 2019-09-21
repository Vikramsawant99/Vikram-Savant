 
 
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


 ####################################

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


 #################################################

 
function checkevenodd
{

Param ( [Parameter(Mandatory=$True)] $Number)   ## Define Param is Mandatory
If($Number%2 -eq 0)
 {
 
 Write-Host "$Number is Even"
  
 }
 else
 {
 Write-Host "$Number is Odd"
 }

}

# checkevenodd -Number 4

checkevenodd 

####################################

