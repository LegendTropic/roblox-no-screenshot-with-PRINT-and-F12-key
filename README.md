# roblox-no-screenshot-with-PRINT-and-F12-key
This Toggleable Auto-Hotkey, will prevent Roblox from using "PRINT" and "F12" key for screenshots


I made a ready-to-save .ahk script that blocks both Print Screen and F12 only while the Roblox Player window is active,
plus a quick toggle hotkey so you can enable/disable the script instantly.

(Ctrl+Alt+P  (Disable and Enable)).


If you have doubts about downloading this and running it as admin,
you can follow this small Guide on how to create yourself.

________________________________________________________________________________
1) Copy this into a file named DisableRobloxScreenshots.ahk
________________________________________________________________________________
; Disable PrintScreen and F12 only while Roblox is active
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Use keyboard hook (stronger interception)
#InstallKeybdHook
#UseHook On

; Block keys only when Roblox player is the active window
#IfWinActive ahk_exe RobloxPlayerBeta.exe
*PrintScreen::Return
*F12::Return
#IfWinActive

; Toggle Suspend with Ctrl+Alt+P (useful to temporarily allow keys)
^!p::
    Suspend, Toggle
    if (A_IsSuspended)
        TrayTip, AHK, Hotkeys suspended (Ctrl+Alt+P to resume), 1500
    else
        TrayTip, AHK, Hotkeys enabled (Ctrl+Alt+P to suspend), 1500
    Return
________________________________________________________________________________
2) How to save & run

Open Notepad.

Paste the script above.

File → Save As → choose All Files and name it DisableRobloxScreenshots.ahk.

Double-click the file to run it. A green H icon will appear in your system tray.

If it doesn’t work at first: right-click the .ahk file → Run as administrator
(some systems require elevated hooks to intercept keys from certain apps).
Try running without admin first — it’s safer.

If you want it to start automatically:

Press Win + R, type shell:startup, press Enter. Copy the .ahk file (or a shortcut to it) into that folder.
________________________________________________________________________________
