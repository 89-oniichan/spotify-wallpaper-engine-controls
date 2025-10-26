Add-Type -TypeDefinition @"
using System.Runtime.InteropServices;
public class MediaKeys {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, System.IntPtr dwExtraInfo);
}
"@
# 0xAD = Mute/Unmute
[MediaKeys]::keybd_event(0xAD, 0, 0, [IntPtr]::Zero)