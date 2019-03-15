Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#must have
Set-TimeZone -Id "AUS Eastern Standard Time"
Set-WinSystemLocale -SystemLocale en-AU
Set-Culture en-AU
Set-WinHomeLocation -GeoId 0xc
#Set-ExecutionPolicy Bypass -Scope Process -Force;Set-TimeZone -Id 'AUS Eastern Standard Time';Set-WinSystemLocale -SystemLocale en-AU;Set-Culture en-AU;Set-WinHomeLocation -GeoId 0xc
choco install adobereader -y
choco install flashplayerplugin -y
choco install googlechrome -y
choco install jre8 -y
choco install 7zip.install -y
choco install teamviewer -y
choco install dotnet4.5 -y
choco install dotnet4.7.1 -y
