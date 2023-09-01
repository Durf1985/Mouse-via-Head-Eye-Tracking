#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
#Persistent
SetCapsLockState, AlwaysOff
; disable context menu ----------------------
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
; включение управления головой ----------------



; enable head control ----------------
CapsLock::
Send {F11 down}{F11 up}
KeyWait CapsLock
Send {F11 down}{F11 up}
return

; mouse button control ------------------
~CapsLock & s::
Send {LButton Down}
KeyWait s
Send {LButton Up}
Send {F11 down}{F11 up}
SetTimer, EnableHeadTracking, -300
return

EnableHeadTracking:
Send {F11 down}{F11 up}
return


return

SendF11Down:
Send  {F11 up}
return


~CapsLock & d::
Send {RButton Down}
KeyWait d
Send {RButton Up}
return

~CapsLock & a::
Send {MButton Down}
KeyWait a
Send {MButton Up}
return





;alternative cross left hand------------------------------------
~CapsLock & q::
Send {Left}
return

~CapsLock & e::
Send {Right}
return

~CapsLock & 2::
Send {Up}
return

~CapsLock & w::
Send {Down}
return

~CapsLock & 1::
Send ^{Left}
return
~CapsLock & 3::
Send ^{Right}
return

; alternative cross right hand

~CapsLock & j::
Send {Left}
return

~CapsLock & l::
Send {Right}
return

~CapsLock & i::
Send {Up}
return

~CapsLock & k::
Send {Down}
return

~CapsLock & h::
Send {Home}
return
~CapsLock & n::
Send {End}
return


;PgUp-Dn -------------------------------------------
~CapsLock & u::
Send {PgUp}
return

~CapsLock & m::
Send {PgDn}
return


; mouse wheel --------------------------------------
~CapsLock & r::
 Send {WheelUp}
return

~CapsLock & f::
 Send {WheelDown}
return
; Qtranslate translator management
~CapsLock & x::
 SendInput {Click Left}{Click Left}{Click Left}{Click Left}{Insert}{Insert}
return
~CapsLock & z::
SendInput {Insert}{Insert}
return


