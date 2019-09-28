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
    WinWait, Facerig Launcher 
    WinActivate, Facerig Launcher
    WinRestore, Facerig Launcher
    WinMove, Facerig Launcher, ,-804,0,800,561
    
;Launch GPMDP
if !WinExist("ahk_exe  Google Play Music Desktop Player.exe")
    Run, C:\Users\denni\AppData\Local\GPMDP_3\Update.exe --processStart "Google Play Music Desktop Player.exe"
    WinWait, Google Play Music Desktop Player
    WinActivate, Google Play Music Desktop Player 
    WinRestore,  Google Play Music Desktop Player
    WinMinimize

;Launch Discord with .lnk since I can't count on the version dir name.
if !WinExist("ahk_exe Discord.exe")
    Run, "C:\Users\denni\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
    WinWait, Discord 
    WinActivate, Discord
    WinRestore, Discord
    WinMove, Discord, ,-2558,0,940,1440

; yea yea I know Windows Volume Mixer sucks
if !WinExist("ahk_exe SndVol.exe")
    Run, C:\Windows\System32\SndVol.exe
    WinWait, Volume Mixer 
    WinActivate, Volume Mixer 
    WinRestore, Volume Mixer 
    WinMove, Volume Mixer, ,3832,1096,1290,350

;Launch VoiceAttack --needs to select appropriate profile
if !WinExist("ahk_exe VoiceAttack.exe")
    Run, "C:\Program Files (x86)\Steam\steamapps\common\VoiceAttack\VoiceAttack.exe"
    WinWait, VoiceAttack
    WinActivate, VoiceAttack
    WinRestore, VoiceAttack
    WinMinimize

;Launch Chrome with a specific tab -- needs work
if !WinExist("ahk_exe chrome.exe")
    Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "twitch.tv/directory/game/Star Citizen"
    ;need to add multiple tabs here
    ;don't forget https://www.autohotkey.com/boards/viewtopic.php?t=42890
    ;or the dumb version https://www.autohotkey.com/boards/viewtopic.php?t=37347
    ;still need https://www.tipeeestream.com/login
    WinWait, Star Citizen 
    WinActivate, Star Citizen 
    WinRestore, Star Citizen
    WinMove, Star Citizen, ,3832,0,1296,1101

; Launch Streamlabs OBS
if !WinExist("ahk_exe Streamlabs OBS.exe")
    Run, "C:\Program Files\Streamlabs OBS\Streamlabs OBS.exe"
    WinWait, Streamlabs OBS
    WinActivate, Streamlabs OBS 
    WinRestore, Streamlabs OBS
    WinMove, Streamlabs OBS, ,-1616,0,1616,1440

;Launch Streamlabs Chatbot with shortcut since I don't know how to reference the Services dir upon launch.
if !WinExist("ahk_exe Streamlabs Chatbot.exe")
    Run, "C:\Users\denni\AppData\Roaming\Streamlabs\Streamlabs Chatbot\Streamlabs Chatbot.lnk"
    WinWait, ahk_exe Streamlabs Chatbot 
    WinActivate, ahk_exe Streamlabs Chatbot
    WinRestore, ahk_exe Streamlabs Chatbot 
    WinMove, Streamlabs Chatbot, ,2560,0,1279,1440


