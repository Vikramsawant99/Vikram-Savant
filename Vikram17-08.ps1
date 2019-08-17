Get-Service | Get-Member
"Vikram" | Get-Member
Start-Transcript
Get-Service | Get-Member
"Vikram" | Get-Member
"Vikram".Length
"Vikram".Contains('K')
"Vikram".Contains('k')
"Vikram".Replace('ram','i')
"VIKRAM".ToLower()
$name="Vikram"
$name
'$name'
"$name"
"This is my Name '$name'"
Write-Host "Enter Your Path"
$path = Read-Host
Get-ChildItem -Path $path
Write-Host "Number1"
$Number1 = Read-Host
Write-Host "Number2"
$Number2 = Read-Host
$Number3 = $Number1.ToInt16($null)
$Number4 = $Number2.ToInt16($null)
Write-Host "Result" ($Number3*$Number4+$Number3-$Number4)
Write-Host "Value1"
[int] $Value1 = Read-Host
Write-Host "Value2"
[int] $Value2 = Read-Host
Write-Host "Result" ($Value1*$Value2)

## IF 

Write-Host "Value1"
[int] $Value1 = Read-Host
Write-Host "Value2"
[int] $Value2 = Read-Host
Write-Host "Result" ($Value1*$Value2)
If($Value1 -igt $Value2)
{Write-host $Value1 "is greater than" $Value}
else
{Write-host $Value1 "is less than" $Value}

## IF & else IF 

$Service =Get-Service -Name BITS
If($Service.Status -eq "Running")
{Write-Host "Bits Service Running State"}
elseif($Service.Status -eq "Stopped")
{Write-Host $Service "Service Stopped State"}
else
{Write-Host $Service "Service not found"}


## Start any Service

Start-Service -Name BITS

$Service =Get-Service -Name BITS
If($Service.Status -eq "Running")
{Write-Host $Service "Service Running State"}
elseif($Service.Status -eq "Stopped")
{Write-Host $Service "Service Stopped State"}
else
{Write-Host $Service "Service not found"}

## Switch

Switch($Service.Status)
{
   "Running" {Write-Host $Service "Running State"}
   "Stopped" {Write-Host $Service "Stopped State"}
    Default {Write-Host $Service.Status}

}

"11" -eq 11
11 -eq "11"
1.05 -eq "1.05"

## Regular Expression

# ^ - Start
# $ - End
# . - Single char Wildcard 

"Running" -match "nn"
"Running" -match "n"
"Running" -match "^n"
"dinesh" -match  "^d....h$"

## [] Character Group

"dinesh" -match "d[i a]nesh"

## {}

"dinesh" -match "^d{5}$"
"dddddd" -match "^d{5}$" 
"dddddd" -match "d{5}$"
"dddddddd" -match "^d{5,7}$"  ## Start with 5 and end with 7
"dddddddd" -match "^d{5,}$"   ## Start with 5 and N+ time repate

Get-Help about_re


## \w - Match all char & digit 
## \W - NON char & digit
## \d - only digit (0-9)
## \D - other than digit 
## \s - only Spcae
## \S - other than Spcae

"A-A-A-A" -match "^(\D[-]){3}\D$"

"mum-srv01" -match "^(\w{3}[-])\w{3}\d{2}$"


## For ()

##for( initialize ; condistion ; update )

For($i=0 ; $i -le 10 ;$i = $i+1)
{
    $i

}

For($i=0 ; $i -le 10 ;$i = $i+1)
{
    New-Item -ItemType File -Path C:\demo\Mytext$i.txt

}

For($i=0 ; $i -le 10 ;$i = $i+1)
{
    Remove-Item -ItemType File -Path C:\demo\Mytext$i.txt

}

For($i=0 ; $i -le 4 ;$i= $i+1)
{
    Write-Host "*"

}

For($i=0 ; $i -le 4 ;$i =$i+1)
{
    Write-Host "*" -NoNewline

}

For($i=0 ; $i -le 4 ;$i =$i+1)
{
    Write-Host "*"[2]
}
