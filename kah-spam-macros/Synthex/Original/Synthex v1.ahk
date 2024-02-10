settingsfile = %A_Appdata%\kas.ini
if FileExist(settingsfile) {
IniRead, spamkey, %A_Appdata%\kas.ini, data, spamkey
IniRead, unspamkey, %A_Appdata%\kas.ini, data, unspamkey
IniRead, crashmsgtext, %A_Appdata%\kas.ini, data, crashmsgtext
IniRead, delay, %A_Appdata%\kas.ini, data, delay
if crashmsgtext = none
crashmsgtext := ""
}else{
FileAppend, , %A_Appdata%\kas.ini
IniWrite, [, %A_Appdata%\kas.ini, data, spamkey
IniWrite, ], %A_Appdata%\kas.ini, data, unspamkey
IniWrite, none, %A_Appdata%\kas.ini, data, crashmsgtext
IniWrite, 0.03, %A_Appdata%\kas.ini, data, delay
spamkey = [
unspamkey = ]
crashmsgtext =
crashmsg = 0
csystem = 0
aot = 0
delay = 0.03
}
#Singleinstance, force
#NoEnv
#UseHook On
Sendmode, Input
SetBatchLines, -1
Hotkey, %spamkey%, setspam, On
Hotkey, %unspamkey%, unsetspam, On
SetKeyDelay, 10

settingsfile = %A_Appdata%\kas.ini
if FileExist(settingsfile) {
    IniRead, spamkey, %A_Appdata%\kas.ini, data, spamkey
    IniRead, unspamkey, %A_Appdata%\kas.ini, data, unspamkey
    IniRead, crashmsgtext, %A_Appdata%\kas.ini, data, crashmsgtext
    IniRead, delay, %A_Appdata%\kas.ini, data, delay
    IniRead, guired, %A_Appdata%\kas.ini, data, guired
    IniRead, guigreen, %A_Appdata%\kas.ini, data, guigreen
    IniRead, guiblue, %A_Appdata%\kas.ini, data, guiblue

    if crashmsgtext = none
        crashmsgtext := ""
} else {
    FileAppend, , %A_Appdata%\kas.ini
    IniWrite, [, %A_Appdata%\kas.ini, data, spamkey
    IniWrite, ], %A_Appdata%\kas.ini, data, unspamkey
    IniWrite, none, %A_Appdata%\kas.ini, data, crashmsgtext
    IniWrite, 0.03, %A_Appdata%\kas.ini, data, delay
    IniWrite, 40, %A_Appdata%\kas.ini, data, guired
    IniWrite, 40, %A_Appdata%\kas.ini, data, guigreen
    IniWrite, 40, %A_Appdata%\kas.ini, data, guiblue

    spamkey = [
    unspamkey = ]
    crashmsgtext =
    crashmsg = 0
    csystem = 0
    aot = 0
    delay = 0.03
}

#SingleInstance force
#NoEnv
#UseHook On
SendMode Input
SetBatchLines -1
Hotkey, %spamkey%, setspam, On
Hotkey, %unspamkey%, unsetspam, On
SetKeyDelay, 10


; Loading Screen
Gui, New, +AlwaysOnTop
Gui, Color, 0x282828 ; Set background color for the loading screen
Gui, Font, s8 cWhite, Verdana

Gui, Add, Picture, x10 y10 w50 h50, Images\OFFICIALSYNTHEX.ico
Gui, Add, Text, x399 y10 w50 h50, v1.0
Gui, Font, s14 cWhite, Verdana
Gui, Add, Text, x30 y77.5 w400 h137.5 center, Welcome to:
Gui, Font, s40 cWhite
Gui, Add, Text, x30 y87.5 w400 h137.5 center BackgroundTrans, Synthex
Gui, Font, s11 cWhite, Verdana
Gui, Add, Text, x30 y147.5 w400 h137.5 center BackgroundTrans, your new exploitless companion
Gui, Show


Sleep, 3000 ; 3000 milliseconds (3 seconds)

Gui, Destroy
TrayTip, Synthex, Kas Remade Better!
;Main GUI
Gui, Color, 0x282828, FFFFFF ; Background color
Gui, Font, cWhite
Gui, Add, Tab, x0 y0 w400 h275, Main|Shortcuts|Settings|Player|Gears|Info
Gui, Tab, Main
Gui, Add, Button, x250 y25 w70 h30 gman1 vd, Disco
Gui, Font, s7 cWhite
Gui, Add, Button, x325 y25 w70 h30 gman2 vf, Freeze RTP
Gui, Add, Button, x325 y60 w70 h30 gman3 vt, Time spam
Gui, Add, Button, x250 y60 w70 h30 gman4 vr, Loading name
Gui, Add, GroupBox, x3 y20 w240 h170,
    Gui, Font, s9 cBlack 
    Gui, Add, Edit, x13 y33 w220 h150 vspamedit Background2E2E2E TextColorFFFFFF,
    Gui, Font, s7 cWhite
Gui, Tab, Shortcuts
Gui, Add, Button, x10 y25 w50 h35 gfly , Fly
Gui, Add, Button, x65 y25 w50 h35 gunfly , UnFly
Gui, Add, Button, x10 y65 w105 h35 gcrashz, Vampire Crash
Gui, Tab, Settings
Gui, Add, Text, x20 y25 w150 h15, Crash Message
Gui, Add, Text, x20 y60 w150 h15, Delay in seconds
Gui, Add, Text, x20 y95 w80 h15, Spam key
Gui, Add, Text, x20 y130 w80 h15, Unspam key
Gui, Font, s8 cBlack
Gui, Add, Edit, x10 y40 w220 h20 vcrashmsgtext, %crashmsgtext%
Gui, Add, Edit, x10 y110 w80 h20 limit1 vspamkey, %spamkey%
Gui, Add, Edit, x10 y145 w80 h20 limit1 vunspamkey, %unspamkey%
Gui, Add, Edit, x10 y75 w80 h20 vdelay, %delay%
Gui, Font, s8 cWhite
Gui, Add, Button, x100 y75 w120 h30 gclipfix, Fix Clipboard
Gui, Add, Button, x100 y110 w120 h30 vset gsetlabel , Save Settings
Gui, Add, CheckBox, vcrashmsg gcheckbox2 x250 y30 w120 h30, Crash Msg
Gui, Add, CheckBox, vaot gcheckbox1 x250 y60 w120 h30, AlwaysOnTop
Gui, Add, CheckBox, vcsystem gcheckbox3 x250 y90 w120 h30, Use C system
Gui, Tab, Player
Gui, Add, Text, x90 y25 w150 h15, Full Username
Gui, Font, s8 cBlack
Gui, Add, Edit, x90 y40 w200 h20 vfulluser, %playertext%
Gui, Font, s8 cWhite
Gui, Add, Button, x20 y80 w120 h30 gbreak , Punish Player
Gui, Tab, Gears
Gui, Font, s8 cBlack
Gui, Add, Button, x5 y30 w120 h30 ggcarpet , Magic Carpet
Gui, Add, Button, x5 y65 w120 h30 gggearban , Gear ban/Fix
Gui, Add, Button, x5 y100 w120 h30 ggoptools , OP Tools
Gui, Add, Button, x5 y135 w120 h30 ggvampire, Vampire Vanq
Gui, Font, s10 cWhite
Gui, Tab, Info
Gui, Add, Text, x2 y20 w250 h80 , KAS : Shade4Real#8929`nSynthex : d.i.z.z_y`nSynthex help : Alexpw50`nOfficial Discord - https://Dsc.gg/Synthe`nSCV3 - https://Sckah.xyz`nEvery new line is a command spammed`nSpam:        [`nUnspam:   ]`nPress backslash (\) to panic close this program!
Gui, Show, h250 w400 Center, Synthex
return



man1:
    GuiControl, text, spamedit, colorshifttop 0 1000 0`r`ncolorshifttop 1000 1000 0`r`ncolorshifttop 1000 0 0`r`ncolorshifttop 1000 0 1000`r`ncolorshifttop 0 0 1000`r`ncolorshifttop 0 1000 1000
return

man2:
    GuiControl, text, spamedit, tp me random`r`nfreeze me
return
man3:
    GuiControl, text, spamedit, name me [I                     ]`r`nname me [III                   ]`r`nname me [IIIII                 ]`r`nname me [IIIIIII               ]`r`nname me [IIIIIIIII             ]`r`nname me [IIIIIIIIIII           ]`r`nname me [IIIIIIIIIIIII         ]`r`nname me [IIIIIIIIIIIIIII       ]`r`nname me [IIIIIIIIIIIIIIIII     ]`r`nname me [IIIIIIIIIIIIIIIIIII   ]`r`nname me [IIIIIIIIIIIIIIIIIIIII ]
return

man4:
    GuiControl, text, spamedit, time 1`r`ntime 2`r`ntime 3`r`ntime 4`r`ntime 5`r`ntime 6`r`ntime 7`r`ntime 8`r`ntime 9`r`ntime 10`r`ntime 11`r`ntime 12`r`ntime 13`r`ntime 14`r`ntime 15`r`ntime 16`r`ntime 17`r`ntime 18`r`ntime 19`r`ntime 20`r`ntime 21`r`ntime 22`r`ntime 23
return

clipfix:
    run %A_Appdata%\clipfix.bat
    TrayTip, Synthex, Your clipboard should now be fixed!
    ExitApp
return

checkbox1:
    Gui, Submit, Nohide
    if (aot = 1)
        Winset, AlwaysOnTop, On, Synthex
    else
        Winset, AlwaysOnTop, Off, Synthex
return

checkbox2:
    Gui, Submit, Nohide
return

checkbox3:
    Gui, Submit, Nohide
return

GuiClose:
    ExitApp
return

spamming := 0
say(str) {
    global delay
    Clipboard := str
    Sendinput, /
    Sleep, delay * 1000
    Sendinput, ^v
    Sleep, delay * 1000
    Sendinput, {Enter}
    Sleep, delay * 1000
    Clipboard :=
}

spam() {
    global spamedit
    global spamming
    while (spamming = 1) {
        for i, v in StrSplit(spamedit, "`n") {
            say(v)
        }
    }
}




breakPlayer() {
    Gui, Submit, Nohide
    global csystem
    global fulluser ; updated variable name
    say("/c system")
    say("punish " fulluser) 
    say("blind " fulluser)
    say("pm " fulluser " You have been punished.")

}




crash() {
    Gui, Submit, Nohide
    global crashmsg
    global csystem
    global crashmsgtext
    global delay
    if (crashmsg = 1)
        say(crashmsgtext)
    if (csystem = 1)
        say("/c system")
    say("gear me 94794847")
    Sleep, 500 + (delay * 2000)
    Sendinput, 1
    Sleep, 75
    say("unsize me me me")
    say("unpaint me me me")

}

flyz() {
    Gui, Submit, Nohide
    global csystem
    if (csystem = 1)
        say("/c system")
    say("fly me")
}

unflyz() {
    Gui, Submit, Nohide
    global csystem
    if (csystem = 1)
        say("/c system")
    say("unfly me")
}

carpet() {
    Gui, Submit, Nohide
    global csystem
    if (csystem = 1)
        say("/c system")
    say("gear me 225921000")
}

vampire() {
    Gui, Submit, Nohide
    global csystem
    if (csystem = 1)
        say("/c system")
    say("gear me 225921000")
}



optools() {
    Gui, Submit, Nohide
    global delay
    global csystem
    if (csystem = 1)
        say("/c system")
    say("gear me 26421972")
    say("gear me 130113146")
    say("gear me 82357101")
    say("gear me 71037101")
    say("gear me 94794847")
    say("gear me 67747912")
}

gearban() {
    Gui, Submit, Nohide
    global csystem
    if (csystem = 1)
        say("/c system")
    say("gear me 82357101")
    say("gear me 71037101")
}

fly:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        flyz()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return

unfly:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        unflyz()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return

gcarpet:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        carpet()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return

goptools:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        optools()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return

ggearban:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        gearban()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return
    
    gvampire:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        vampire()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return

    crashz:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        crash()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return

break:
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        breakPlayer()
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
    return




setspam() {
    global spamming
    global csystem
    spamming := 1
    If WinExist("Roblox") {
        WinActivate, Roblox
        Sleep, 100
        Gui, Submit, NoHide
        if (csystem = 1)
            say("/c system")
        SetTimer, spam, 1
    } else {
        MsgBox, , Synthex, Roblox doesn't seem to be open
    }
}

unsetspam() {
    global spamming
    spamming := 0
    SetTimer, spam, Delete
    return
}

setlabel:
    Hotkey, $%spamkey%, , off
    Hotkey, $%unspamkey%, , off
    Gui, Submit, NoHide
    Hotkey, $%spamkey%, setspam, On
    Hotkey, $%unspamkey%, unsetspam, On
    if (!crashmsgtext)
        crashmsgtext := "none"
    IniWrite, %spamkey%, %A_Appdata%\kas.ini, data, spamkey
    IniWrite, %unspamkey%, %A_Appdata%\kas.ini, data, unspamkey
    IniWrite, %crashmsgtext%, %A_Appdata%\kas.ini, data, crashmsgtext
    IniWrite, %delay%, %A_Appdata%\kas.ini, data, delay
    TrayTip, Synthex, Settings saved!
    return

$\::ExitApp
return
