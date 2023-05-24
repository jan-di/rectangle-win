#include-once

#include "vendor/vkConstants.au3"

#include "src/WindowActions.au3"
#include "src/GUISettings.au3"
#include "src/FileConfig.au3"
#include "src/Hotkeys.au3"
#include "src/SysTray.au3"

Opt("MustDeclareVars", 1)

_Main()

Func _Main()
	_LoadConfig()
	_StoreConfig()
	_SetHotkeys()

	_InitTray()
	_SettingsGUI_Create()

	While True
		Sleep(1000)
	WEnd
EndFunc

Func _Exit()
	Exit
EndFunc