 # Class

Class Admailbox #New cladd create 
 { 
   [String] $name
   [int] $totalitemsize
 
 }

 $Admailboxvalue = New-Object -TypeName Admailbox # Create my object
 
 $Admailboxvalue = [Admailbox]:: new()

 $Admailboxvalue = [Admailbox] @{name= "Vikram"; totalitemsize ="500" }
  
 $admailboxvalue.name = "Vikram" # Addvalue in object
 $admailboxvalue.totalitemsize = 500
 $admailboxvalue

 $Admailboxvalue = [Admailbox] @{name= "Vijay"; totalitemsize ="400" }
 $admailboxvalue


  $Admailboxvalue = [Admailbox] @{name= "Vijay"; totalitemsize ="400" } | Export-Csv -Path C:\test\Class


  $Sortlist=@(1,2,6,12,13,24,26)
  $Sortlist | Sort-Object
  

   $Sortlist=@("1","2","6","12","13","24","26")
   $Sortlist | Sort-Object



   ## 2 Ex

   Class MyCalculator
   { 
     [int]$FirstNumber
     [int]$Secondnumber

    [int] Add()
     
     {
     return $this.FirstNumber +  $this.Secondnumber
       }  


    [int] Multi()
     
     {
     return $this.FirstNumber * $this.Secondnumber

       } 

    }

$Calculator =New-Object -TypeName MyCalculator

$Calculator.FirstNumber =5
$Calculator.Secondnumber=10

$Calculator.Add()
$Calculator.Multi()

## Error
 
$Error   # fix name
$Error[0]                    # to check last error
$Error[0] | Get-Member
$Error[0]

$PSVersionTable

Generate-error
$error[0]
$Error[0].InvocationInfo
$error[0] | Get-Member
$Error[0].CategoryInfo
$error[0].ErrorDetails

$ErrorActionPreference    # continue with error

Stop-Service -ErrorAction
Stop-Service vikram -ErrorAction Inquire  #asking error action
Stop-Service vikram -ErrorAction SilentlyContinue #Run with out showing error

Stop-Service vikram -ErrorAction Continue -ErrorVariable VK
$VK | Get-Member



$Services = @("BITS","Vikram","Windowsupdate")

Stop-Service $Services -ErrorAction Continue | Export-Csv -Path C:\test\SU.txt -Append

$Services = @("BITS","Vikram","Windowsupdate")

If($Services -eq $null)
{
  


# Try & Catch


