#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoTrayIcon
SetTitleMatchMode, 2
#SingleInstance Force
#WinActivateForce
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ### Launch stuff related to streaming and put it where it goes

; Launch FaceRig
if !WinExist("ahk_exe Launcher.exe")
    Run, "C:\Program Files (x86)\Steam\steamapps\common\FaceRig\Bin\FaceRig.exe"
    WinWait, ahk_exe Launcher.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439
    
; Launch Streamlabs OBS
if !WinExist("ahk_exe Streamlabs OBS.exe")
    Run, "C:\Program Files\Streamlabs OBS\Streamlabs OBS.exe"
    WinWait, ahk_exe Streamlabs OBS.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439

;Launch GPMDP
if !WinExist("ahk_exe  Google Play Music Desktop Player.exe")
    Run, C:\Users\denni\AppData\Local\GPMDP_3\Update.exe --processStart "Google Play Music Desktop Player.exe"
    WinWait, ahk_exe Google Play Music Desktop Player.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439

;Launch Streamlabs Chatbot with shortcut since I don't know how to reference the Services dir upon launch.
if !WinExist("ahk_exe Streamlabs Chatbot.exe")
    Run, "C:\Users\denni\AppData\Roaming\Streamlabs\Streamlabs Chatbot\Streamlabs Chatbot.lnk"
    WinWait, ahk_exe Streamlabs Chatbot.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439

;Launch Discord with .lnk since I can't count on the version dir name.
if !WinExist("ahk_exe Discord.exe")
    Run, "C:\Users\denni\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
    WinWait, ahk_exe Discord.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439

if !WinExist("ahk_exe SndVol.exe")
    Run, C:\Windows\System32\SndVol.exe
    WinWait, ahk_exe SndVol.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439

if !WinExist("ahk_exe VoiceAttack.exe")
    Run, "C:\Program Files (x86)\Steam\steamapps\common\VoiceAttack\VoiceAttack.exe"
    WinWait, ahk_exe VoiceAttack.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439

if !WinExist("ahk_exe chrome.exe")
    Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "twitch.tv/directory/game/Star Citizen"
    ;need to add multiple tabs here
    ;don't forget https://www.autohotkey.com/boards/viewtopic.php?t=42890
    ;or the dumb version https://www.autohotkey.com/boards/viewtopic.php?t=37347
    ;still need https://www.tipeeestream.com/login
    WinWait, ahk_exe chrome.exe
    WinActivate, Discord ahk_class Chrome_WidgetWin_1 
    WinRestore, Discord ahk_class Chrome_WidgetWin_1
    WinMove, Discord ahk_class Chrome_WidgetWin_1, ,-2558,0,940,1439
