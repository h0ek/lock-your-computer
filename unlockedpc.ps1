#Send email to SOC team
$Outlook = New-Object -ComObject Outlook.Application
$Mail = $Outlook.CreateItem(0)
$Mail.To = "soc@yourcompany.com"
$Mail.Subject = "Oops I did it..."
$Mail.Body ="Dear SOC,

my computer is unblocked and I am out of its range.
Anyone who walks by it has access to all my data.
This message is in my sent folder as evidence.
Please contact me urgently and remind me of the company's security policy.
 
As compensation, I invite everyone to pizza, this is on me.

Thank you in advance!"
$Mail.Send()

#Set wallpaper
$setwallpapersrc = @"
using System.Runtime.InteropServices;

public class Wallpaper
{
  public const int SetDesktopWallpaper = 20;
  public const int UpdateIniFile = 0x01;
  public const int SendWinIniChange = 0x02;
  [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
  private static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
  public static void SetWallpaper(string path)
  {
    SystemParametersInfo(SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange);
  }
}
"@
Add-Type -TypeDefinition $setwallpapersrc

[Wallpaper]::SetWallpaper("%userprofile%\AppData\Local\Temp\security_was_here.bmp")
