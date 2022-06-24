copy ".\unlockedpc.ps1" "%userprofile%\AppData\Local\Temp\"
copy ".\security_was_here.bmp" "%userprofile%\AppData\Local\Temp\"
cd "%userprofile%\AppData\Local\Temp\"
%Windir%\System32\WindowsPowerShell\v1.0\PowerShell.exe -exec bypass -noprofile -file "./unlockedpc.ps1"
