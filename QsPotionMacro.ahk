#NoEnv
#Persistent
#SingleInstance force

running := false
sleepDuration := 500  ; Default speed
macroKey := "F1"  ; Static keybind

Gui, +AlwaysOnTop -Resize -MaximizeBox
Gui, Font, s12, Segoe UI

dropdownItems := "Fortune Potions|Haste Potions|Jewelry Potion|Zombie Potion|Rage Potion|Diver Potion|Potion of Bound|Heavenly Potion|Godly Potion (Lord of the Sky)|Godly Potion (Lord of the Sea)|Godly Potion (Lord of the Hell)|Forbidden Potion|Warp Potion"
speedOptions := "Very Slow|Slow|Normal|Fast|Ultra Fast"

Gui, Add, Tab2, x10 y10 w380 h220 vMainTab, Macro|Credits

; === Macro Tab ===
Gui, Tab, Macro
Gui, Add, Text,, Select a Potion to Craft
Gui, Add, ComboBox, vSelectedOption w300, %dropdownItems%
Gui, Add, Text,, Select Macro Speed
Gui, Add, ComboBox, vSelectedSpeed w300, %speedOptions%
Gui, Add, Text,, Press F1 to Start/Stop Macro
Gui, Add, Text, vStatusText w300 h30, Status: Idle

; === Credits Tab ===
Gui, Tab, Credits
Gui, Font, s10 Italic, Segoe UI

; Added some vertical spacing to avoid crowding
Gui, Add, Text, x20 y40, My Server
Gui, Add, Button, x30 y70 w250 h30 gOpenDiscord, Join Discord Server

Gui, Add, Text, x20 y110, My Profile
Gui, Add, Button, x30 y140 w250 h30 gOpenRoblox, View Roblox Profile

; Credit text
Gui, Add, Text, x20 y190, Script created by Q_SJa
Gui, Add, Text, x20 y210, Designed for auto-crafting potions

Gui, Tab
Gui, Show, w400 h250, Q's Potion Macro
return

; === F1 Hotkey ===
F1::
Gui, Submit, NoHide
selected := Trim(SelectedOption)
speed := Trim(SelectedSpeed)

; Adjust speed
if (speed = "Very Slow")
    sleepDuration := 1000
else if (speed = "Slow")
    sleepDuration := 750
else if (speed = "Normal")
    sleepDuration := 500
else if (speed = "Fast")
    sleepDuration := 250
else if (speed = "Ultra Fast")
    sleepDuration := 100
else
    sleepDuration := 500

if (selected = "") {
    GuiControl,, StatusText, Status: No option selected
    return
}

if (running) {
    running := false
    GuiControl,, StatusText, Status: Idle
    return
}

running := true
GuiControl,, StatusText, Status: Running
SetTimer, RunTask, 10
return

RunTask:
if (!running) {
    SetTimer, RunTask, Off
    return
}

if (selected = "Fortune Potions") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Haste Potions") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Jewelry Potion") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Zombie Potion") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Rage Potion") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Diver Potion") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Potion of Bound") {
    MouseMove, 800, 771
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Heavenly Potion") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Godly Potion (Lord of the Sky)") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 800, 683
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Godly Potion (Lord of the Sea)") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Godly Potion (Lord of the Hell)") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Forbidden Potion") {
    MouseMove, 800, 629
    Click
    Sleep, %sleepDuration%
    MouseMove, 800, 685
    Click
    Sleep, %sleepDuration%
    MouseMove, 800, 740
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
else if (selected = "Warp Potion") {
    MouseMove, 800, 771
    Click
    Sleep, %sleepDuration%
    MouseMove, 576, 576
    Click
    Sleep, %sleepDuration%
}
return

; === Links to Open ===
OpenDiscord:
Run, https://discord.com/invite/CFsCa3qe5e
return

OpenRoblox:
Run, https://www.roblox.com/users/799932600/profile
return

GuiClose:
ExitApp
