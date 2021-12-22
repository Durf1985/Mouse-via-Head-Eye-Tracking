#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetCapsLockState, AlwaysOff



~CapsLock::
Send {F11 down}{F11 up}
KeyWait CapsLock
Click
Send {F11 down}{F11 up}
return

RCtrl::RButton
return

~CapsLock & LShift:: MButton
return



