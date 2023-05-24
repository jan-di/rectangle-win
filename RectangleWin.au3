#AutoIt3Wrapper_Res_Description=RectangleWin
#AutoIt3Wrapper_Res_ProductName=RectangleWin
#AutoIt3Wrapper_Res_ProductVersion=1.0.0
#AutoIt3Wrapper_Res_Fileversion=1.0.0.5
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=Y
#AutoIt3Wrapper_Res_Fileversion_First_Increment=Y
#AutoIt3Wrapper_Res_LegalCopyright=© 2023 Jan Dittrich
#AutoIt3Wrapper_OutFile=RectangleWin32.exe
#AutoIt3Wrapper_OutFile_X64=RectangleWin64.exe
#AutoIt3Wrapper_UseUpx=N
#AutoIt3Wrapper_Compile_both=Y
#AutoIt3Wrapper_res_requestedExecutionLevel=asInvoker

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