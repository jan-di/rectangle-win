#include-once

#include "../RectangleWin.au3"

Opt("TrayMenuMode", 3)
Opt("TrayOnEventMode", 3)

Func _InitTray()
	Local $idTray_itmSettings = TrayCreateItem("Settings")
	TrayItemSetOnEvent(-1, "_SettingsGUI_Show")

	TrayCreateItem("")

	Local $idTray_itmExit = TrayCreateItem("Exit")
	TrayItemSetOnEvent(-1, "_Exit")
EndFunc