Write-Host "Hello My First Practice Program"
Get-Command Read-Host
Get-Help Read-Host -Online
$name = Read-Host "Enter Your name: " 
Write-Host $name
Get-Service | Where-Object {$_.Status -eq "running"}
Get-Command -Noun *user*
Get-PSProvider
Get-PSDrive function | Format-List Description, Credential, Name, provider  
Get-help Format-List -Online
Get-Command *restore*

Get-Help Enable-ComputerRestore -Online
Get-Command *point*
Get-Help Get-ComputerRestorePoint -Online
Get-Help Checkpoint-Computer -Online

function Hello {
    
    Write-Output "Hello My First function"
        
}

function Hello_Param {
    param ($Messege)
    Write-Output "$Messege" 
    Write-Host "Writing on HOst"
    
}


