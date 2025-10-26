Add-Type -TypeDefinition @"
using System.Runtime.InteropServices;
public class MediaKeys {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, System.IntPtr dwExtraInfo);
}
"@
# 0xAF = Volume Up
[MediaKeys]::keybd_event(0xAF, 0, 0, [IntPtr]::Zero)