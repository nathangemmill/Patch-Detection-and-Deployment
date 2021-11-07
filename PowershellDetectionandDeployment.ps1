#----------------------------------------------------------------
#	Type:	Script
#	Desc:	Check OS version and install patch
#	Author:	Nathan Gemmill
#	Ver:	1.0
#----------------------------------------------------------------

#----------------------------------------------------------------
# Variables
#----------------------------------------------------------------
$OSVersion = (get-itemproperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name ProductName).ProductName

#----------------------------------------------------------------
# Download and install patch based on OS
#----------------------------------------------------------------
If($OSVersion -match "Windows 10")
{
Write-Host "You're running Windows 10 champ"
}
ElseIf($OSVersion -match "Windows Server 2008 R2")
{
Write-Host "You're running Windows Server 2008 R2 champ"
wget "http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/10/windows8.1-kb5006729-x64_5f228dd572d5607d8c0e41d695fcf2e4404e56fb.msu" -OutFile "2012R2-Patch.msu"
wusa.exe .\2012R2-Patch.msu /quiet /norestart
}
ElseIf($OSVersion -match "Windows Server 2012")
{
Write-Host "You're running Windows Server 2012 champ"
wget "http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/10/windows8.1-kb5006729-x64_5f228dd572d5607d8c0e41d695fcf2e4404e56fb.msu" -OutFile "2012R2-Patch.msu"
wusa.exe .\2012R2-Patch.msu /quiet /norestart
}
ElseIf($OSVersion -match "Windows Server 2016")
{
Write-Host "You're running Windows Server 2016 champ"
wget "http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/10/windows10.0-kb5006669-x64_aa5c931de237226eae4f333915750dbd998a8534.msu" -OutFile "2016-Patch.msu"
wusa.exe .\2016-Patch.msu /quiet /norestart
}
ElseIf($OSVersion -match "Windows Server 2019")
{
    Write-Host "You're running Windows Server 2019 champ"
    wget "http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/10/windows10.0-kb5006672-x64_7044166433a0a9e2ffefe7608ad7d1fe05383c81.msu" -OutFile "2019-Patch.msu"
    wusa.exe .\2019-Patch.msu /quiet /norestart
}