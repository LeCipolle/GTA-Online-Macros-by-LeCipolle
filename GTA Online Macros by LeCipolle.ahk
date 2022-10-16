#NoEnv                          ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#IfWinActive ahk_class grcWindow  ; Disables hotkeys when alt-tabbed or GTA is closed.
#SingleInstance, force
;                                                               ———Assign Hotkey and Delay Values———


------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to create public solo session (wait 10 seconds from game freeze and press button again)

F10::
if (toggle := !toggle) {
Process_Suspend("GTA5.exe")
;MsgBox, GTA5.exe suspended
Process_Suspend(PID_or_Name){
PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
If !h
Return -1
DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
DllCall("CloseHandle", "Int", h)
}
} else {
Process_Resume("GTA5.exe")
;MsgBox, GTA5.exe resumed
Process_Resume(PID_or_Name){
PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
If !h
Return -1
DllCall("ntdll.dll\NtResumeProcess", "Int", h)
DllCall("CloseHandle", "Int", h)
}
ProcExist(PID_or_Name=""){
Process, Exist, % (PID_or_Name="") ? DllCall("GetCurrentProcessID") : PID_or_Name
Return Errorlevel
}
}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to activate CEO

F1::

Send {m}
Sleep, IntMenuDelay
Send {Down}{Down}{Down}{Down}{Down}{Down}{Enter}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to request "TBS" (only with CEO)

F2::

Send {m}
Sleep, IntMenuDelay
Send {Enter}{Down}{Down}{Down}{Down}{Enter}{Down}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to request "Bulletproof Vest" (only with CEO)

F3::

Send {m}
Sleep, IntMenuDelay
Send {Enter}{Down}{Down}{Down}{Down}{Enter}{Down}{Down}{Down}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script that automatically buys all ammo

F4::

Send {m}
Sleep IntMenuDelay
Send {Down}{Down}{Down}{Enter}{Down}{Down}{Down}{Down}{Down}{Enter}
Sleep 10
Send {Left}{Down}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script that requires "Phantom Organization" (only with CEO)

F5::

Send {m}
Sleep IntMenuDelay
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Up}{Enter}
return


------------------------------------------------------------------------------------------------------------------------------------------------------
; Script that requires "Bribe Law Enforcement" (only with CEO)

F6::

Send {m}
Sleep IntMenuDelay
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to activate MC

F7::

Send {m}
Sleep, IntMenuDelay
Send {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to disable CEO \ MC

F8::

Send {m}{Enter}{Up}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script that removes wanted level (Lester)

Numpad7::

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 150

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 800

Send,{Right down}
Sleep 10
Send,{Right up}

Sleep 20

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 20

Send,{Enter down}
Sleep 10
Send,{Enter up}

Sleep 300

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}
 
Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}{Enter}

Sleep 5500

Send {Down}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to request off-radar (Lester)

Numpad4::

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 150

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 800

Send,{Right down}
Sleep 10
Send,{Right up}

Sleep 20

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 20

Send,{Enter down}
Sleep 10
Send,{Enter up}

Sleep 300

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}
 
Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}{Enter}

Sleep 5500

Send {Down}{Down}{Enter}
return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script calling the mechanic

Numpad8::

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 150

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 800

Send,{Right down}
Sleep 10
Send,{Right up}

Sleep 20

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 20

Send,{Enter down}
Sleep 10
Send,{Enter up}

Sleep 300

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Down down}
Sleep 10
Send,{Down up}{Enter}

return

------------------------------------------------------------------------------------------------------------------------------------------------------
; Script to call Mors Mutual Ensurance

Numpad9::

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 150

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 800

Send,{Right down}
Sleep 10
Send,{Right up}

Sleep 20

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 20

Send,{Enter down}
Sleep 10
Send,{Enter up}

Sleep 300

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send, {Up down}
sleep 10
Send, {Up up}

Sleep 100

Send,{Up down}
Sleep 10
Send,{Up up}

Sleep 100

Send {Enter}
return

Send,{Left down}
Sleep 10
Send,{Left up}

Sleep 100

Send,{Left down}
Sleep 10
Send,{Left up}

------------------------------------------------------------------------------------------------------------------------------------------------------