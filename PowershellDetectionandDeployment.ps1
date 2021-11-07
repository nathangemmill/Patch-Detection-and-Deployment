$OSVersion = (get-itemproperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name ProductName).ProductName

If($OSVersion -match "Windows 10")
{
Write-Host "You're running Windows 10 champ"
}
ElseIf($OSVersion -match "Windows Server 2012")
{
Write-Host "You're running Windows Server 2012 champ"
}
ElseIf($OSVersion -eq "Windows Server 2016")
{
Write-Host "You're running Windows Server 2016 champ"
}
ElseIf($OSVersion -eq "Windows Server 2019")
{
    Write-Host "You're running Windows Server 2019 champ"
}