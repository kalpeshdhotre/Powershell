Function Add_number
{
param(
[parameter(mandatory=$true, position=0, valuefrompipelinebypropertyname=$true)] [int]$FirstNumber ,
[parameter(mandatory=$true, position=1, valuefrompipelinebypropertyname=$true)] [int]$SecondNumber 
)
Write-Host "Your addition of $FirstNumber and $SecondNumber is $($FirstNumber + $SecondNumber)" -ForegroundColor Yellow
}

Add_number -FirstNumber 66 -SecondNumber 34

1 ,2 | Add_number

1,2 | gm

$myobject = [pscustomobject]@{FirstNumber=3;secondNumber=5}
$myobject | Add_number

$myobject | Export-Csv .\Desktop\KD\mynumbers.csv

$numbers=import-csv .\Desktop\KD\mynumbers.csv

foreach($number in $numbers)
{
    add_number -FirstNumber $number.FirstNumber -SecondNumber $number.secondNumber
}

# Advance Function 
Function Show-messege
{
    [cmdletbinding()]
    param(
    [parameter(mandatory=$true, ValueFromPipelineByPropertyName=$true)]$FN
    )
    Begin{Write-Host "This is begining"}
    Process{Write-Host "This is process block $FN"}
    end{Write-Host "This is end"}
}

$numbers | Show-messege

