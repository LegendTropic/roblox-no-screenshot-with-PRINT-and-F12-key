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
