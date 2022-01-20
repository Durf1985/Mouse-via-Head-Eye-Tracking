#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetCapsLockState, AlwaysOff
~LAlt::
Sendinput {Blind}{sc0E9}
KeyWait, LAlt 
Sendinput {Blind}{sc0EA}
return

~RAlt::
Sendinput {Blind}{sc0E9}
KeyWait, RAlt 
Sendinput {Blind}{sc0EA}
return

CapsLock::
Send {F11 down}{F11 up}
KeyWait CapsLock
Send {F11 down}{F11 up}
return

~CapsLock & d::
Send {RButton Down}
KeyWait d
Send {RButton Up}
return

~CapsLock & a:: MButton
return

~CapsLock & w::
Send {LButton Down}
KeyWait w
Send {LButton Up}
return

~CapsLock & s::
 Send {WheelUp}
return
~CapsLock & x::
 Send {WheelDown}
return



