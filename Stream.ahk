#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#NoTrayIcon
SetTitleMatchMode, 2
#SingleInstance Force
#WinActivateForce
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ### Launch Stuff Related to Streaming

; Launch FaceRig
if !WinExist("ahk_exe Launcher.exe")
    Run, "C:\Program Files (x86)\Steam\steamapps\common\FaceRig\Bin\FaceRig.exe"

; Launch Streamlabs OBS
if !WinExist("ahk_exe Streamlabs OBS.exe")
    Run, "C:\Program Files\Streamlabs OBS\Streamlabs OBS.exe"

;Launch GPMDP
if !WinExist("ahk_exe  Google Play Music Desktop Player.exe")
    Run, C:\Users\denni\AppData\Local\GPMDP_3\Update.exe --processStart "Google Play Music Desktop Player.exe"

;Launch Streamlabs Chatbot with shortcut since I don't know how to reference the Services dir upon launch.
if !WinExist("ahk_exe Streamlabs Chatbot.exe")
    Run, "C:\Users\denni\AppData\Roaming\Streamlabs\Streamlabs Chatbot\Streamlabs Chatbot.lnk"

;Launch Discord with .lnk since I can't count on the version dir name.
if !WinExist("ahk_exe Discord.exe")
    Run, "C:\Users\denni\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"

if !WinExist("ahk_exe SndVol.exe")
    Run, C:\Windows\System32\SndVol.exe