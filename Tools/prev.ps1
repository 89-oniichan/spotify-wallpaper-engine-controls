Add-Type -TypeDefinition @"
using System.Runtime.InteropServices;
public class MediaKeys {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, System.IntPtr dwExtraInfo);
}
"@
# 0xB1 = Previous Track
[MediaKeys]::keybd_event(0xB1, 0, 0, [IntPtr]::Zero)