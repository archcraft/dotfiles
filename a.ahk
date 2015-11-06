SetTimer, ReloadScriptIfChanged, 1000
ReloadScriptIfChanged:
{
FileGetAttrib, FileAttribs, %A_ScriptFullPath%
IfInString, FileAttribs, A
{
FileSetAttrib, -A, %A_ScriptFullPath%
TrayTip, Reloading Script..., %A_ScriptName%, , 1
Sleep, 1000
Reload
TrayTip
}
Return
}

SetTitleMatchMode, 2

^j::
   Send, My First Script
Return
!c::
    Run, chrome
Return
#c:: ; (This is a comment:) Windows+c triggers the following
Send !{f4} ; Simulates the keypress alt+f4
return ; Finished
!z:: ; (This is a comment:) Windows+c triggers the following
Send !{f4} ; Simulates the keypress alt+f4
return ; Finished
