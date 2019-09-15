﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
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