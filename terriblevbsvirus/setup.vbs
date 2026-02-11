dim wshell
set wshell = createobject("WScript.Shell")
str="set it up"
response = msgbox(str, vbyesno, str)
if response = vbno then
    wshell.run "setup.bat"
end if