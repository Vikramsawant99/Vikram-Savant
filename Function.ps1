
function checkevenodd
{

Param ( 
[Parameter(Mandatory=$True)]
[ValidateRange(1,100)] 
[int]$Number)  

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


##########################

## Helpmessage

function checkevenodd
{

Param ( 
[Parameter(Mandatory=$true,Helpmessage="Plase enter Number to check Even or odd ")] ## HelpMsg
[ValidateScript({$_ -gt 0 -and $_.length -gt 0}) ]
[int]$Number)  

If($Number%2 -eq 0)
 {
 
 Write-Host "$Number is Even"
  
 }
 else
 {
 Write-Host "$Number is Odd"
 }
 
 }

  checkevenodd 

  ## [ValidateScript({$_
  
  
  #######################################
  

##ValueFromPipeline

function checkevenodd
{

Param ( 
[Parameter(Mandatory=$true,Helpmessage="Plase enter Number to check Even or odd ",ValueFromPipeline=$true)]
[ValidateScript({$_ -gt 0 -and $_.length -gt 0}) ]
[int]$Number)  

If($Number%2 -eq 0)
 {
 
 Write-Host "$Number is Even"
  
 }
 else
 {
 Write-Host "$Number is Odd"
 }
 
 }

  1..10|checkevenodd   


  ####################################

  ## CmdletBinding 

  function checkevenodd
{



 
Param ( 
[CmdletBinding()]
[Parameter(Mandatory=$true,Helpmessage="Plase enter Number to check Even or odd ",ValueFromPipeline=$true)]
[ValidateScript({$_ -gt 0 -and $_.length -gt 0}) ]
[int]$Number)  

begin{
}
Process

{

If($Number%2 -eq 0)
 {
 
 Write-Host "$Number is Even"
  
 }
 else
 {
 Write-Host "$Number is Odd"
 }
 }

 end{}
 }

  1..10|checkevenodd   



  ################################


