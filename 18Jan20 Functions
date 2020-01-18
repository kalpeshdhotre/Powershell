# Function

# Define function
Function Display-message 
{
    Write-Output "Hello There" 
}

#Calling function
Display-message

# Define function to get output in Green colour
Function Display-message 
{
    Write-host "Hello There" -ForegroundColor Green
}

# Define function with parameter
Function Display-message 
{
    param($text)
    Write-host "$text" -ForegroundColor Green
}

# |Running function with parameter
Display-message -text "Hi Kalpesh"

# function to create user , Error handling
function create-ntmsuser 
{
    Param (
    [Parameter(Mandatory=$true)]
    $csvpath)
        $users=Import-Csv -path $csvpath
        foreach($user in $users)
        {
            Write-Output "Creating user $($user.name)"
            $userpassword = $user.password | ConvertTo-SecureString -AsPlainText -Force
            try
            {
            New-LocalUser -Name "$($user.name)" -Password $userpassword -ErrorAction Stop
            }
            catch{
               "Not able to create user $($user.name) " | out-file .\Desktop\error.log -Append
               "The Exception is $($_.Exception)" | out-file .\Desktop\error.log -Append
            }
        }



# Define function to Create Calculator for addition
Function Add_number
{
    param(
    [parameter(mandatory=$true, position=0)] [ValidatePattern("[0-9]{1}[0-9]{1}")] [int]$FirstNumber ,
    [parameter(mandatory=$true, position=1)] [ValidatePattern("[0-9][0-9]{2,2}")] [int]$SecondNumber 
    )
    Write-Host "Your addition of $FirstNumber and $SecondNumber is $($FirstNumber + $SecondNumber)" -ForegroundColor Yellow
}

Add_number -FirstNumber 66 -SecondNumber 34

<#Positional Parameter
[parameter(mandatory=$true, position=0)] [int]$FirstNumber ,
[parameter(mandatory=$true, position=1)] [int]$SecondNumber 
#>
add_number 644 788 

Get-Help about_functions_advanced_parameters -ShowWindow

312 -match "^[0-9][0-9]$"
222 -match "[10-99]{2,2}"

"aabcdef" -match "^[a-z]{6}$"


Get-Help about_regular_expression -ShowWindow

function get-emailaddress
{
    param(
    [parameter(mandatory=$true, position=0)] [ValidatePattern("^[a-z]{6}$")]$fname,
    [parameter(mandatory=$true, position=1)] [ValidatePattern("^[a-z]{6}$")]$lname
    )

    Write-Host "Email address is $($fname.substring(0,1)).$lname@ntms.co.in"
}

get-emailaddress kalpes dhotre

"kalpesh".substring(3, 2)
